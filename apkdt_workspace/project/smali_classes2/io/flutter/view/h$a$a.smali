.class Lio/flutter/view/h$a$a;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/h$a;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:J

.field final synthetic f:Lio/flutter/view/h$a;


# direct methods
.method constructor <init>(Lio/flutter/view/h$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/h$a$a;->f:Lio/flutter/view/h$a;

    iput-wide p2, p0, Lio/flutter/view/h$a$a;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/flutter/view/h$a$a;->f:Lio/flutter/view/h$a;

    iget-object v0, v0, Lio/flutter/view/h$a;->a:Lio/flutter/view/h;

    invoke-static {v0}, Lio/flutter/view/h;->a(Lio/flutter/view/h;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-long v0, v2

    add-long v4, p1, v0

    .line 3
    iget-wide v6, p0, Lio/flutter/view/h$a$a;->e:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lio/flutter/embedding/engine/FlutterJNI;->nativeOnVsync(JJJ)V

    return-void
.end method
