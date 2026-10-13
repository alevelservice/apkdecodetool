.class final Lio/flutter/view/FlutterView$f;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/view/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field private final a:J

.field private final b:Landroid/graphics/SurfaceTexture;

.field private c:Z

.field private d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field final synthetic e:Lio/flutter/view/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView;JLandroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/FlutterView$f;->e:Lio/flutter/view/FlutterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lio/flutter/view/FlutterView$f$a;

    invoke-direct {p1, p0}, Lio/flutter/view/FlutterView$f$a;-><init>(Lio/flutter/view/FlutterView$f;)V

    iput-object p1, p0, Lio/flutter/view/FlutterView$f;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 3
    iput-wide p2, p0, Lio/flutter/view/FlutterView$f;->a:J

    .line 4
    iput-object p4, p0, Lio/flutter/view/FlutterView$f;->b:Landroid/graphics/SurfaceTexture;

    .line 5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 6
    iget-object p1, p0, Lio/flutter/view/FlutterView$f;->b:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lio/flutter/view/FlutterView$f;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lio/flutter/view/FlutterView$f;->b:Landroid/graphics/SurfaceTexture;

    iget-object p2, p0, Lio/flutter/view/FlutterView$f;->d:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lio/flutter/view/FlutterView$f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/view/FlutterView$f;->c:Z

    return p0
.end method

.method static synthetic b(Lio/flutter/view/FlutterView$f;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/view/FlutterView$f;->a:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lio/flutter/view/FlutterView$f;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/flutter/view/FlutterView$f;->c:Z

    .line 4
    iget-object v0, p0, Lio/flutter/view/FlutterView$f;->b:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 5
    iget-object v0, p0, Lio/flutter/view/FlutterView$f;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 6
    iget-object v0, p0, Lio/flutter/view/FlutterView$f;->e:Lio/flutter/view/FlutterView;

    invoke-static {v0}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v0

    iget-wide v1, p0, Lio/flutter/view/FlutterView$f;->a:J

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/FlutterJNI;->unregisterTexture(J)V

    return-void
.end method

.method public b()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/flutter/view/FlutterView$f;->b:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public id()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/view/FlutterView$f;->a:J

    return-wide v0
.end method
