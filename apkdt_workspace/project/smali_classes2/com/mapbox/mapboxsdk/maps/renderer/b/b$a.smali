.class Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;
.super Ljava/lang/Object;
.source "TextureViewRenderThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/renderer/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Ljavax/microedition/khronos/egl/EGL10;

.field private d:Ljavax/microedition/khronos/egl/EGLConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private f:Ljavax/microedition/khronos/egl/EGLContext;

.field private g:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/TextureView;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 3
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    .line 4
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 5
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 6
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->h()V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g()V

    return-void
.end method

.method static synthetic c(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic d(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static synthetic e(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    aput-object v2, v0, v1

    const-string v1, "Could not destroy egl context. Display %s, Context %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mbgl-TextureViewRenderThread"

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    aput-object v2, v0, v1

    const-string v1, "Could not destroy egl surface. Display %s, Surface %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mbgl-TextureViewRenderThread"

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    aput-object v2, v0, v1

    const-string v1, "Could not terminate egl. Display %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mbgl-TextureViewRenderThread"

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->h()V

    .line 3
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g()V

    .line 4
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->i()V

    return-void
.end method

.method b()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method c()Z
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->h()V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x3038

    aput v3, v2, v1

    .line 5
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-interface {v3, v4, v5, v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_2

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d()Z

    move-result v0

    return v0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v2, 0x300b

    if-ne v0, v2, :cond_3

    const-string v0, "Mbgl-TextureViewRenderThread"

    const-string v2, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    .line 10
    invoke-static {v0, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method d()Z
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "eglMakeCurrent: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mbgl-TextureViewRenderThread"

    invoke-static {v1, v0}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    return v1
.end method

.method e()V
    .locals 5

    .line 2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 6
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 11
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_1

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_4

    .line 13
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/a/a;

    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->b:Z

    invoke-direct {v0, v1}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a;-><init>(Z)V

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v0, v1, v2}, Lcom/mapbox/mapboxsdk/maps/renderer/a/a;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_0

    .line 15
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    .line 16
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_5

    return-void

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "createContext"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->g:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x3000

    return v0
.end method
