package com.gunmubei.lsposed;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class SafeReflection {

    private SafeReflection() {
    }

    /**
     * 从对象及其父类中查找字段。
     *
     * 读取失败时返回 null。
     */
    static Object readField(
            Object target,
            String fieldName
    ) {

        if (target == null
                || fieldName == null
                || fieldName.isEmpty()) {
            return null;
        }

        Class<?> current = target.getClass();

        while (current != null) {

            try {
                Field field =
                        current.getDeclaredField(fieldName);

                try {
                    field.setAccessible(true);
                } catch (RuntimeException | LinkageError ignored) {
                    return null;
                }

                return field.get(target);

            } catch (NoSuchFieldException ignored) {

                current = current.getSuperclass();

            } catch (
                    IllegalAccessException
                    | RuntimeException
                    | LinkageError ignored
            ) {
                return null;
            }
        }

        return null;
    }

    static int readInt(
            Object target,
            String fieldName,
            int fallback
    ) {

        Object value = readField(target, fieldName);

        if (value instanceof Number) {
            return ((Number) value).intValue();
        }

        return fallback;
    }

    static long readLong(
            Object target,
            String fieldName,
            long fallback
    ) {

        Object value = readField(target, fieldName);

        if (value instanceof Number) {
            return ((Number) value).longValue();
        }

        return fallback;
    }

    static String readString(
            Object target,
            String fieldName
    ) {

        Object value = readField(target, fieldName);

        if (value instanceof String) {
            return (String) value;
        }

        return null;
    }

    /**
     * 调用对象的无参方法。
     *
     * 方法不存在或调用失败时返回 null。
     */
    static Object invokeNoArg(
            Object target,
            String methodName
    ) {

        if (target == null
                || methodName == null
                || methodName.isEmpty()) {
            return null;
        }

        Class<?> current = target.getClass();

        while (current != null) {

            try {
                Method method =
                        current.getDeclaredMethod(methodName);

                try {
                    method.setAccessible(true);
                } catch (RuntimeException | LinkageError ignored) {
                    return null;
                }

                return method.invoke(target);

            } catch (NoSuchMethodException ignored) {

                current = current.getSuperclass();

            } catch (
                    ReflectiveOperationException
                    | RuntimeException
                    | LinkageError ignored
            ) {
                return null;
            }
        }

        return null;
    }
}