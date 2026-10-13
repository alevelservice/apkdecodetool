.class Lcom/mapbox/mapboxsdk/maps/renderer/b/b;
.super Ljava/lang/Thread;
.source "TextureViewRenderThread.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/graphics/SurfaceTexture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>(Landroid/view/TextureView;Lcom/mapbox/mapboxsdk/maps/renderer/b/a;)V
    .locals 2
    .param p1    # Landroid/view/TextureView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/renderer/b/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->h:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;

    .line 7
    new-instance v0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->a()Z

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;-><init>(Ljava/lang/ref/WeakReference;Z)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->q:Z

    .line 8
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 9
    :goto_0
    iget-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 10
    :try_start_1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 11
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 12
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "runnable must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->n:Z

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method c()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->n:Z

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->l:Z

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->i:Landroid/graphics/SurfaceTexture;

    .line 3
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->j:I

    .line 4
    iput p3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->k:I

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->l:Z

    .line 6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->i:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->p:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->l:Z

    .line 5
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->j:I

    .line 3
    iput p3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->k:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->m:Z

    .line 5
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->l:Z

    .line 6
    iget-object p2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    return-void
.end method

.method public run()V
    .locals 9

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 2
    :goto_1
    :try_start_1
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->q:Z

    if-eqz v2, :cond_1

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 4
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a()V

    .line 5
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_2
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->r:Z

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 9
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    :goto_2
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    goto :goto_5

    .line 11
    :cond_2
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->p:Z

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)V

    .line 13
    iput-boolean v5, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->p:Z

    goto :goto_3

    .line 14
    :cond_3
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->o:Z

    if-eqz v2, :cond_4

    .line 15
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->b(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)V

    .line 16
    iput-boolean v5, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->o:Z

    :goto_3
    move-object v2, v4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->i:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->n:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->l:Z

    if-eqz v2, :cond_e

    .line 18
    iget v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->j:I

    .line 19
    iget v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->k:I

    .line 20
    iget-object v6, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-static {v6}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v6, v7, :cond_5

    move v8, v2

    move v7, v3

    move-object v2, v4

    const/4 v3, 0x1

    :goto_4
    const/4 v6, 0x0

    goto :goto_5

    .line 21
    :cond_5
    iget-object v6, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-static {v6}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_6

    move v8, v2

    move v7, v3

    move-object v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_5

    .line 22
    :cond_6
    iput-boolean v5, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->l:Z

    move v8, v2

    move v7, v3

    move-object v2, v4

    const/4 v3, 0x0

    goto :goto_4

    .line 23
    :goto_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz v2, :cond_7

    .line 24
    :try_start_4
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 25
    :cond_7
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->b()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    if-eqz v3, :cond_9

    .line 26
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e()V

    .line 27
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 28
    :try_start_5
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c()Z

    move-result v3

    if-nez v3, :cond_8

    .line 29
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->p:Z

    .line 30
    monitor-exit v2

    goto/16 :goto_0

    .line 31
    :cond_8
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 32
    :try_start_6
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;

    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-static {v3}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->e(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 33
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;

    invoke-virtual {v2, v1, v7, v8}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    .line 34
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    :cond_9
    if-eqz v6, :cond_a

    .line 35
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 36
    :try_start_9
    iget-object v3, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->c()Z

    .line 37
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 38
    :try_start_a
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;

    invoke-virtual {v2, v1, v7, v8}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    .line 39
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v1

    .line 40
    :cond_a
    iget-boolean v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->m:Z

    if-eqz v2, :cond_b

    .line 41
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;

    invoke-virtual {v2, v1, v7, v8}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 42
    iput-boolean v5, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->m:Z

    goto/16 :goto_0

    .line 43
    :cond_b
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-static {v2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->d(Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_c

    goto/16 :goto_0

    .line 44
    :cond_c
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->e:Lcom/mapbox/mapboxsdk/maps/renderer/b/a;

    invoke-virtual {v2, v1}, Lcom/mapbox/mapboxsdk/maps/renderer/b/a;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 45
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->f()I

    move-result v1

    const/16 v2, 0x3000

    if-eq v1, v2, :cond_0

    const/16 v2, 0x300e

    if-eq v1, v2, :cond_d

    const-string v2, "Mbgl-TextureViewRenderThread"

    const-string v3, "eglSwapBuffer error: %s. Waiting or new surface"

    new-array v6, v0, [Ljava/lang/Object;

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 48
    :try_start_d
    iput-object v4, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->i:Landroid/graphics/SurfaceTexture;

    .line 49
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->p:Z

    .line 50
    monitor-exit v1

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v2

    :cond_d
    const-string v1, "Mbgl-TextureViewRenderThread"

    const-string v2, "Context lost. Waiting for re-aquire"

    .line 51
    invoke-static {v1, v2}, Lcom/mapbox/mapboxsdk/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 53
    :try_start_f
    iput-object v4, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->i:Landroid/graphics/SurfaceTexture;

    .line 54
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->p:Z

    .line 55
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->o:Z

    .line 56
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v2
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 57
    :cond_e
    :try_start_11
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto/16 :goto_1

    :catchall_5
    move-exception v2

    .line 58
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw v2
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception v1

    .line 59
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a()V

    .line 60
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 61
    :try_start_13
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->r:Z

    .line 62
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 63
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 64
    throw v1

    :catchall_7
    move-exception v0

    .line 65
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    throw v0

    .line 66
    :catch_0
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->f:Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/maps/renderer/b/b$a;->a()V

    .line 67
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_15
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->r:Z

    .line 69
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/b/b;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method
