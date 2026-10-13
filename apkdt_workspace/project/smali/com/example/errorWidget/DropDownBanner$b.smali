.class Lcom/example/errorWidget/DropDownBanner$b;
.super Ljava/lang/Object;
.source "DropDownBanner.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/errorWidget/DropDownBanner;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/example/errorWidget/DropDownBanner;


# direct methods
.method constructor <init>(Lcom/example/errorWidget/DropDownBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/example/errorWidget/DropDownBanner$b;->a:Lcom/example/errorWidget/DropDownBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/example/errorWidget/DropDownBanner$b;->a:Lcom/example/errorWidget/DropDownBanner;

    invoke-static {p1}, Lcom/example/errorWidget/DropDownBanner;->access$700(Lcom/example/errorWidget/DropDownBanner;)Lcom/example/native_webview/j/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->c()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
