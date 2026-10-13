.class Lio/flutter/view/h$a;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"

# interfaces
.implements Lio/flutter/embedding/engine/FlutterJNI$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/h;


# direct methods
.method constructor <init>(Lio/flutter/view/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/view/h$a;->a:Lio/flutter/view/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lio/flutter/view/h$a$a;

    invoke-direct {v1, p0, p1, p2}, Lio/flutter/view/h$a$a;-><init>(Lio/flutter/view/h$a;J)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
