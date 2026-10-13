package lombok.eclipse.agent;

import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.jar.JarFile;
import java.util.zip.ZipEntry;

/* JADX WARN: Classes with same name are omitted:
  mmessage.apk:Class50/lombok/eclipse/agent/EclipseLoaderPatcherTransplants.SCL.lombok
 */
/* loaded from: mmessage.apk:lombok/eclipse/agent/EclipseLoaderPatcherTransplants.SCL.lombok */
public class EclipseLoaderPatcherTransplants {
    static Class class$0;
    static Class class$1;
    static Class class$2;
    static Class class$3;
    static Class class$4;

    public static boolean overrideLoadDecide(ClassLoader original, String name, boolean resolve) {
        return name.startsWith("lombok.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v108, types: [java.lang.Throwable, java.lang.Class] */
    /* JADX WARN: Type inference failed for: r0v110, types: [java.lang.Throwable, java.lang.Class] */
    /* JADX WARN: Type inference failed for: r0v112, types: [java.lang.Throwable, java.lang.Class] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.lang.Throwable, java.lang.reflect.Method] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.lang.Throwable, java.lang.Class] */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.lang.Throwable, java.lang.String] */
    public static Class overrideLoadResult(ClassLoader original, String name, boolean resolve) throws ClassNotFoundException {
        try {
            Field shadowLoaderField = original.getClass().getField("lombok$shadowLoader");
            ClassLoader shadowLoader = (ClassLoader) shadowLoaderField.get(original);
            if (shadowLoader == null) {
                synchronized ("lombok$shadowLoader$globalLock".intern()) {
                    shadowLoader = (ClassLoader) shadowLoaderField.get(original);
                    if (shadowLoader == null) {
                        Class shadowClassLoaderClass = (Class) original.getClass().getField("lombok$shadowLoaderClass").get(null);
                        Class classLoaderClass = Class.forName("java.lang.ClassLoader");
                        String jarLoc = (String) original.getClass().getField("lombok$location").get(null);
                        if (shadowClassLoaderClass == null) {
                            JarFile jf = new JarFile(jarLoc);
                            InputStream in = null;
                            try {
                                ZipEntry entry = jf.getEntry("lombok/launch/ShadowClassLoader.class");
                                in = jf.getInputStream(entry);
                                byte[] bytes = new byte[65536];
                                int len = 0;
                                do {
                                    int r = in.read(bytes, len, bytes.length - len);
                                    if (r != -1) {
                                        len += r;
                                    } else {
                                        in.close();
                                        try {
                                            Class methodHandles = Class.forName("java.lang.invoke.MethodHandles");
                                            ?? cls = Class.forName("java.lang.invoke.MethodHandle");
                                            ?? cls2 = Class.forName("java.lang.invoke.MethodType");
                                            ?? cls3 = Class.forName("java.lang.invoke.MethodHandles$Lookup");
                                            Method lookupMethod = methodHandles.getDeclaredMethod("lookup", null);
                                            Class[] clsArr = new Class[2];
                                            Class<?> cls4 = class$0;
                                            if (cls4 == null) {
                                                try {
                                                    cls4 = Class.forName("java.lang.Class");
                                                    class$0 = cls4;
                                                } catch (ClassNotFoundException unused) {
                                                    throw new NoClassDefFoundError(cls2.getMessage());
                                                }
                                            }
                                            clsArr[0] = cls4;
                                            Class<?> cls5 = class$1;
                                            if (cls5 == null) {
                                                try {
                                                    cls5 = Class.forName("[Ljava.lang.Class;");
                                                    class$1 = cls5;
                                                } catch (ClassNotFoundException unused2) {
                                                    throw new NoClassDefFoundError(cls2.getMessage());
                                                }
                                            }
                                            clsArr[1] = cls5;
                                            ?? declaredMethod = cls2.getDeclaredMethod("methodType", clsArr);
                                            Class<?>[] clsArr2 = new Class[3];
                                            Class<?> cls6 = class$0;
                                            if (cls6 == null) {
                                                try {
                                                    cls6 = Class.forName("java.lang.Class");
                                                    class$0 = cls6;
                                                } catch (ClassNotFoundException unused3) {
                                                    throw new NoClassDefFoundError(cls3.getMessage());
                                                }
                                            }
                                            clsArr2[0] = cls6;
                                            Class<?> cls7 = class$2;
                                            if (cls7 == null) {
                                                try {
                                                    cls7 = Class.forName("java.lang.String");
                                                    class$2 = cls7;
                                                } catch (ClassNotFoundException unused4) {
                                                    throw new NoClassDefFoundError(cls3.getMessage());
                                                }
                                            }
                                            clsArr2[1] = cls7;
                                            clsArr2[2] = cls2;
                                            Method findVirtualMethod = cls3.getDeclaredMethod("findVirtual", clsArr2);
                                            Class[] clsArr3 = new Class[1];
                                            Class<?> cls8 = class$3;
                                            if (cls8 == null) {
                                                try {
                                                    cls8 = Class.forName("[Ljava.lang.Object;");
                                                    class$3 = cls8;
                                                } catch (ClassNotFoundException unused5) {
                                                    throw new NoClassDefFoundError(cls.getMessage());
                                                }
                                            }
                                            clsArr3[0] = cls8;
                                            Method invokeMethod = cls.getDeclaredMethod("invokeWithArguments", clsArr3);
                                            Object lookup = lookupMethod.invoke(null, null);
                                            Object[] objArr = new Object[2];
                                            Class<?> cls9 = class$0;
                                            if (cls9 == null) {
                                                try {
                                                    cls9 = Class.forName("java.lang.Class");
                                                    class$0 = cls9;
                                                } catch (ClassNotFoundException unused6) {
                                                    throw new NoClassDefFoundError(declaredMethod.getMessage());
                                                }
                                            }
                                            objArr[0] = cls9;
                                            Class[] clsArr4 = new Class[4];
                                            Class<?> cls10 = class$2;
                                            if (cls10 == null) {
                                                try {
                                                    cls10 = Class.forName("java.lang.String");
                                                    class$2 = cls10;
                                                } catch (ClassNotFoundException unused7) {
                                                    throw new NoClassDefFoundError(declaredMethod.getMessage());
                                                }
                                            }
                                            clsArr4[0] = cls10;
                                            Class<?> cls11 = class$4;
                                            if (cls11 == null) {
                                                try {
                                                    cls11 = Class.forName("[B");
                                                    class$4 = cls11;
                                                } catch (ClassNotFoundException unused8) {
                                                    throw new NoClassDefFoundError(declaredMethod.getMessage());
                                                }
                                            }
                                            clsArr4[1] = cls11;
                                            clsArr4[2] = Integer.TYPE;
                                            clsArr4[3] = Integer.TYPE;
                                            objArr[1] = clsArr4;
                                            Object type = declaredMethod.invoke(null, objArr);
                                            Object method = findVirtualMethod.invoke(lookup, original.getClass(), "defineClass", type);
                                            shadowClassLoaderClass = (Class) invokeMethod.invoke(method, new Object[]{original, "lombok.launch.ShadowClassLoader", bytes, new Integer(0), new Integer(len)});
                                        } catch (ClassNotFoundException unused9) {
                                        }
                                        if (shadowClassLoaderClass == null) {
                                            Class[] paramTypes = {"".getClass(), new byte[0].getClass(), Integer.TYPE, paramTypes[2]};
                                            Method defineClassMethod = classLoaderClass.getDeclaredMethod("defineClass", paramTypes);
                                            defineClassMethod.setAccessible(true);
                                            shadowClassLoaderClass = (Class) defineClassMethod.invoke(original, "lombok.launch.ShadowClassLoader", bytes, new Integer(0), new Integer(len));
                                        }
                                        original.getClass().getField("lombok$shadowLoaderClass").set(null, shadowClassLoaderClass);
                                    }
                                } while (len != bytes.length);
                                throw new IllegalStateException("lombok.launch.ShadowClassLoader too large.");
                            } finally {
                                if (in != null) {
                                    in.close();
                                }
                                jf.close();
                            }
                        }
                        Class[] paramTypes2 = {classLoaderClass, "".getClass(), paramTypes2[1], Class.forName("java.util.List"), paramTypes2[3]};
                        Constructor constructor = shadowClassLoaderClass.getDeclaredConstructor(paramTypes2);
                        constructor.setAccessible(true);
                        shadowLoader = (ClassLoader) constructor.newInstance(original, "lombok", jarLoc, Arrays.asList("lombok."), Arrays.asList("lombok.patcher.Symbols"));
                        shadowLoaderField.set(original, shadowLoader);
                    }
                }
            }
            if (resolve) {
                Class[] paramTypes3 = {"".getClass(), Boolean.TYPE};
                ?? r0 = shadowLoader.getClass();
                Class[] clsArr5 = new Class[2];
                Class<?> cls12 = class$2;
                if (cls12 == null) {
                    try {
                        cls12 = Class.forName("java.lang.String");
                        class$2 = cls12;
                    } catch (ClassNotFoundException unused10) {
                        throw new NoClassDefFoundError(r0.getMessage());
                    }
                }
                clsArr5[0] = cls12;
                clsArr5[1] = Boolean.TYPE;
                Method m = r0.getDeclaredMethod("loadClass", clsArr5);
                m.setAccessible(true);
                return (Class) m.invoke(shadowLoader, name, Boolean.TRUE);
            }
            return shadowLoader.loadClass(name);
        } catch (Exception ex) {
            Throwable t = ex;
            if (t instanceof InvocationTargetException) {
                t = t.getCause();
            }
            if (t instanceof RuntimeException) {
                throw ((RuntimeException) t);
            }
            if (t instanceof Error) {
                throw ((Error) t);
            }
            throw new RuntimeException(t);
        }
    }
}
