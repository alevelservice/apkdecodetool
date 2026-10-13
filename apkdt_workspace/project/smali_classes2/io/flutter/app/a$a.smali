.class Lio/flutter/app/a$a;
.super Ljava/lang/Object;
.source "FlutterActivityDelegate.java"

# interfaces
.implements Lio/flutter/view/FlutterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/app/a;


# direct methods
.method constructor <init>(Lio/flutter/app/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/app/a$a;->a:Lio/flutter/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/app/a$a;->a:Lio/flutter/app/a;

    .line 2
    invoke-static {v0}, Lio/flutter/app/a;->a(Lio/flutter/app/a;)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lio/flutter/app/a$a$a;

    invoke-direct {v1, p0}, Lio/flutter/app/a$a$a;-><init>(Lio/flutter/app/a$a;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 6
    iget-object v0, p0, Lio/flutter/app/a$a;->a:Lio/flutter/app/a;

    invoke-static {v0}, Lio/flutter/app/a;->b(Lio/flutter/app/a;)Lio/flutter/view/FlutterView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/view/FlutterView;->removeFirstFrameListener(Lio/flutter/view/FlutterView$d;)V

    return-void
.end method
