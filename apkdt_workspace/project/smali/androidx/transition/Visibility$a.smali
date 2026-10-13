.class Landroidx/transition/Visibility$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/Visibility;->b(Landroid/view/ViewGroup;Landroidx/transition/m;ILandroidx/transition/m;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/transition/q;

.field final synthetic f:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/Visibility;Landroidx/transition/q;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/transition/Visibility$a;->e:Landroidx/transition/q;

    iput-object p3, p0, Landroidx/transition/Visibility$a;->f:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/transition/Visibility$a;->e:Landroidx/transition/q;

    iget-object v0, p0, Landroidx/transition/Visibility$a;->f:Landroid/view/View;

    invoke-interface {p1, v0}, Landroidx/transition/q;->b(Landroid/view/View;)V

    return-void
.end method
