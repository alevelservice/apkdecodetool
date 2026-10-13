.class Lio/flutter/view/FlutterView$f$a;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterView$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lio/flutter/view/FlutterView$f;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/FlutterView$f$a;->e:Lio/flutter/view/FlutterView$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/flutter/view/FlutterView$f$a;->e:Lio/flutter/view/FlutterView$f;

    invoke-static {p1}, Lio/flutter/view/FlutterView$f;->a(Lio/flutter/view/FlutterView$f;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/flutter/view/FlutterView$f$a;->e:Lio/flutter/view/FlutterView$f;

    iget-object p1, p1, Lio/flutter/view/FlutterView$f;->e:Lio/flutter/view/FlutterView;

    invoke-static {p1}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/e;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/flutter/view/FlutterView$f$a;->e:Lio/flutter/view/FlutterView$f;

    iget-object p1, p1, Lio/flutter/view/FlutterView$f;->e:Lio/flutter/view/FlutterView;

    invoke-static {p1}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lio/flutter/view/e;->e()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/view/FlutterView$f$a;->e:Lio/flutter/view/FlutterView$f;

    .line 4
    invoke-static {v0}, Lio/flutter/view/FlutterView$f;->b(Lio/flutter/view/FlutterView$f;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->markTextureFrameAvailable(J)V

    :cond_1
    :goto_0
    return-void
.end method
