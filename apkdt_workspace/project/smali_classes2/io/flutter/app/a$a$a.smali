.class Lio/flutter/app/a$a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlutterActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lio/flutter/app/a$a;


# direct methods
.method constructor <init>(Lio/flutter/app/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/app/a$a$a;->e:Lio/flutter/app/a$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/flutter/app/a$a$a;->e:Lio/flutter/app/a$a;

    iget-object p1, p1, Lio/flutter/app/a$a;->a:Lio/flutter/app/a;

    invoke-static {p1}, Lio/flutter/app/a;->a(Lio/flutter/app/a;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/flutter/app/a$a$a;->e:Lio/flutter/app/a$a;

    iget-object v0, v0, Lio/flutter/app/a$a;->a:Lio/flutter/app/a;

    .line 2
    invoke-static {v0}, Lio/flutter/app/a;->a(Lio/flutter/app/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lio/flutter/app/a$a$a;->e:Lio/flutter/app/a$a;

    iget-object p1, p1, Lio/flutter/app/a$a;->a:Lio/flutter/app/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/app/a;->a(Lio/flutter/app/a;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
