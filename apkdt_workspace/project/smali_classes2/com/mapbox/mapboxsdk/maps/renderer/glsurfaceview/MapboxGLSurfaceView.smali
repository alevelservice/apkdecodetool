.class public Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "MapboxGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;
    }
.end annotation


# instance fields
.field private e:Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;->e:Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;->a()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public setDetachedListener(Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;->e:Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView;->e:Lcom/mapbox/mapboxsdk/maps/renderer/glsurfaceview/MapboxGLSurfaceView$a;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Detached from window listener has been already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
