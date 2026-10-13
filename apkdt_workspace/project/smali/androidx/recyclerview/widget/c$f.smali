.class Landroidx/recyclerview/widget/c$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/c;->b(Landroidx/recyclerview/widget/RecyclerView$z;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/recyclerview/widget/RecyclerView$z;

.field final synthetic f:I

.field final synthetic g:Landroid/view/View;

.field final synthetic h:I

.field final synthetic i:Landroid/view/ViewPropertyAnimator;

.field final synthetic j:Landroidx/recyclerview/widget/c;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/RecyclerView$z;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/c$f;->j:Landroidx/recyclerview/widget/c;

    iput-object p2, p0, Landroidx/recyclerview/widget/c$f;->e:Landroidx/recyclerview/widget/RecyclerView$z;

    iput p3, p0, Landroidx/recyclerview/widget/c$f;->f:I

    iput-object p4, p0, Landroidx/recyclerview/widget/c$f;->g:Landroid/view/View;

    iput p5, p0, Landroidx/recyclerview/widget/c$f;->h:I

    iput-object p6, p0, Landroidx/recyclerview/widget/c$f;->i:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Landroidx/recyclerview/widget/c$f;->f:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/c$f;->h:I

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->g:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->i:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->j:Landroidx/recyclerview/widget/c;

    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->e:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m;->j(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 3
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->j:Landroidx/recyclerview/widget/c;

    iget-object p1, p1, Landroidx/recyclerview/widget/c;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->e:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->j:Landroidx/recyclerview/widget/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/c;->j()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/c$f;->j:Landroidx/recyclerview/widget/c;

    iget-object v0, p0, Landroidx/recyclerview/widget/c$f;->e:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/m;->k(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method
