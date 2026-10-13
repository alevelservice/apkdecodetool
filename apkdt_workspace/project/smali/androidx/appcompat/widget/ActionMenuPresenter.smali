.class Landroidx/appcompat/widget/ActionMenuPresenter;
.super Landroidx/appcompat/view/menu/b;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/core/view/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuPresenter$b;,
        Landroidx/appcompat/widget/ActionMenuPresenter$c;,
        Landroidx/appcompat/widget/ActionMenuPresenter$f;,
        Landroidx/appcompat/widget/ActionMenuPresenter$a;,
        Landroidx/appcompat/widget/ActionMenuPresenter$e;,
        Landroidx/appcompat/widget/ActionMenuPresenter$d;,
        Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field private final A:Landroid/util/SparseBooleanArray;

.field B:Landroidx/appcompat/widget/ActionMenuPresenter$e;

.field C:Landroidx/appcompat/widget/ActionMenuPresenter$a;

.field D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

.field private E:Landroidx/appcompat/widget/ActionMenuPresenter$b;

.field final F:Landroidx/appcompat/widget/ActionMenuPresenter$f;

.field G:I

.field n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, La/a/g;->abc_action_menu_layout:I

    sget v1, La/a/g;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/b;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$f;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$f;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->F:Landroidx/appcompat/widget/ActionMenuPresenter$f;

    return-void
.end method

.method private a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 85
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 87
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 88
    instance-of v5, v4, Landroidx/appcompat/view/menu/n$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Landroidx/appcompat/view/menu/n$a;

    .line 89
    invoke-interface {v5}, Landroidx/appcompat/view/menu/n$a;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method static synthetic a(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    return-object p0
.end method

.method static synthetic b(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    return-object p0
.end method

.method static synthetic c(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method

.method static synthetic d(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    return-object p0
.end method

.method static synthetic e(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/f;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    return-object p0
.end method

.method static synthetic f(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/n;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 33
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 40
    invoke-virtual {p3, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 4
    invoke-static {p1}, La/a/n/a;->a(Landroid/content/Context;)La/a/n/a;

    move-result-object p1

    .line 5
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p1}, La/a/n/a;->g()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    .line 7
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->x:Z

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, La/a/n/a;->b()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:I

    .line 9
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Z

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p1}, La/a/n/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:I

    .line 11
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->s:I

    .line 12
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 15
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v3, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Z

    .line 19
    :cond_3
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 20
    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 21
    :cond_4
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 22
    :cond_5
    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 23
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 24
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:I

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 25
    iget-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->v:Z

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    invoke-static {p1}, La/a/n/a;->a(Landroid/content/Context;)La/a/n/a;

    move-result-object p1

    invoke-virtual {p1}, La/a/n/a;->c()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:I

    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/f;->b(Z)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Z

    .line 32
    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 138
    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    .line 140
    iget p1, p1, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->e:I

    if-lez p1, :cond_1

    .line 141
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/r;

    .line 143
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/r;)Z

    :cond_1
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 0

    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->d()Z

    .line 137
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/f;Z)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;Landroidx/appcompat/view/menu/n$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/n$a;->initialize(Landroidx/appcompat/view/menu/i;I)V

    .line 42
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 43
    check-cast p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 44
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Landroidx/appcompat/view/menu/f$b;)V

    .line 45
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->E:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ActionMenuPresenter$b;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->E:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    .line 47
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->E:Landroidx/appcompat/widget/ActionMenuPresenter$b;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Landroidx/appcompat/view/menu/ActionMenuItemView$b;)V

    return-void
.end method

.method public a(Landroidx/appcompat/widget/ActionMenuView;)V
    .locals 1

    .line 144
    iput-object p1, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    .line 145
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/f;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Z)V

    .line 50
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 51
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->c()Ljava/util/ArrayList;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/i;->a()Landroidx/core/view/b;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v3, p0}, Landroidx/core/view/b;->a(Landroidx/core/view/b$a;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->j()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_1
    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 59
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 60
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_2
    if-eqz v0, :cond_7

    .line 61
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-nez p1, :cond_5

    .line 62
    new-instance p1, Landroidx/appcompat/widget/ActionMenuPresenter$d;

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->e:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$d;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    .line 63
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 64
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_6

    .line 65
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    .line 67
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 68
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    if-ne p1, v0, :cond_8

    .line 69
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_8
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public a()Z
    .locals 20

    move-object/from16 v0, p0

    .line 90
    iget-object v1, v0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/f;->n()Ljava/util/ArrayList;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    const/4 v4, 0x0

    .line 93
    :goto_0
    iget v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->u:I

    .line 94
    iget v6, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->t:I

    .line 95
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 96
    iget-object v8, v0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast v8, Landroid/view/ViewGroup;

    move v12, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    .line 97
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 98
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->k()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 99
    :cond_1
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    .line 100
    :goto_2
    iget-boolean v13, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Z

    if-eqz v13, :cond_3

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isActionViewExpanded()Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v12, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    :cond_4
    iget-boolean v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    if-eqz v5, :cond_6

    if-nez v9, :cond_5

    add-int/2addr v11, v10

    if-le v11, v12, :cond_6

    :cond_5
    add-int/lit8 v12, v12, -0x1

    :cond_6
    sub-int/2addr v12, v10

    .line 102
    iget-object v5, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->A:Landroid/util/SparseBooleanArray;

    .line 103
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->clear()V

    .line 104
    iget-boolean v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-eqz v9, :cond_7

    .line 105
    iget v9, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->z:I

    div-int v10, v6, v9

    .line 106
    rem-int v11, v6, v9

    .line 107
    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3
    move v11, v6

    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v6, v4, :cond_1b

    .line 108
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/i;

    .line 109
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->k()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 110
    invoke-virtual {v0, v15, v2, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 111
    iget-boolean v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-eqz v2, :cond_8

    .line 112
    invoke-static {v13, v9, v10, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v2

    sub-int/2addr v10, v2

    goto :goto_5

    .line 113
    :cond_8
    invoke-virtual {v13, v7, v7}, Landroid/view/View;->measure(II)V

    .line 114
    :goto_5
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v11, v2

    if-nez v14, :cond_9

    goto :goto_6

    :cond_9
    move v2, v14

    .line 115
    :goto_6
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_a

    .line 116
    invoke-virtual {v5, v13, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 117
    :cond_a
    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/i;->d(Z)V

    move v14, v2

    move/from16 v17, v4

    :goto_7
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 118
    :cond_b
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->j()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 119
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v2

    .line 120
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    if-gtz v12, :cond_c

    if-eqz v13, :cond_e

    :cond_c
    if-lez v11, :cond_e

    .line 121
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-eqz v3, :cond_d

    if-lez v10, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    move/from16 v18, v3

    move/from16 v17, v4

    if-eqz v3, :cond_14

    const/4 v3, 0x0

    .line 122
    invoke-virtual {v0, v15, v3, v8}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroidx/appcompat/view/menu/i;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 123
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    .line 124
    invoke-static {v4, v9, v10, v7, v3}, Landroidx/appcompat/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v19

    sub-int v10, v10, v19

    if-nez v19, :cond_f

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    move/from16 v3, v18

    :goto_9
    move/from16 v18, v3

    goto :goto_a

    .line 125
    :cond_10
    invoke-virtual {v4, v7, v7}, Landroid/view/View;->measure(II)V

    .line 126
    :goto_a
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v11, v3

    if-nez v14, :cond_11

    move v14, v3

    .line 127
    :cond_11
    iget-boolean v3, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->w:Z

    if-eqz v3, :cond_12

    if-ltz v11, :cond_13

    goto :goto_b

    :cond_12
    add-int v3, v11, v14

    if-lez v3, :cond_13

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_13
    const/4 v3, 0x0

    :goto_c
    and-int v3, v18, v3

    :cond_14
    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    .line 128
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_e

    :cond_15
    if-eqz v13, :cond_18

    const/4 v4, 0x0

    .line 129
    invoke-virtual {v5, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v6, :cond_18

    .line 130
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/i;

    .line 131
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 132
    invoke-virtual {v13}, Landroidx/appcompat/view/menu/i;->h()Z

    move-result v0

    if-eqz v0, :cond_16

    add-int/lit8 v12, v12, 0x1

    :cond_16
    const/4 v0, 0x0

    .line 133
    invoke-virtual {v13, v0}, Landroidx/appcompat/view/menu/i;->d(Z)V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_d

    :cond_18
    :goto_e
    if-eqz v3, :cond_19

    add-int/lit8 v12, v12, -0x1

    .line 134
    :cond_19
    invoke-virtual {v15, v3}, Landroidx/appcompat/view/menu/i;->d(Z)V

    goto/16 :goto_7

    :cond_1a
    move/from16 v17, v4

    const/4 v0, 0x0

    .line 135
    invoke-virtual {v15, v0}, Landroidx/appcompat/view/menu/i;->d(Z)V

    :goto_f
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_1b
    const/4 v2, 0x1

    return v2
.end method

.method public a(ILandroidx/appcompat/view/menu/i;)Z
    .locals 0

    .line 48
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->h()Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/view/menu/b;->a(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 7

    .line 73
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 74
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    if-eq v2, v3, :cond_1

    .line 75
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/r;

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 77
    :cond_2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:I

    .line 78
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_4

    .line 79
    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/f;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 80
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    :cond_4
    :goto_2
    new-instance v2, Landroidx/appcompat/widget/ActionMenuPresenter$a;

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    invoke-direct {v2, p0, v3, p1, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$a;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/r;Landroid/view/View;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    .line 82
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/l;->a(Z)V

    .line 83
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->e()V

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    return v4
.end method

.method public b()Landroid/os/Parcelable;
    .locals 2

    .line 5
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 6
    iget v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->G:I

    iput v1, v0, Landroidx/appcompat/widget/ActionMenuPresenter$SavedState;->e:I

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    .line 3
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->b(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setPresenter(Landroidx/appcompat/widget/ActionMenuPresenter;)V

    :cond_0
    return-object p1
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/f;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->y:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->r:Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->f()Z

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->g()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->p:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->o:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    if-eqz v2, :cond_0

    .line 3
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->a()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->C:Landroidx/appcompat/widget/ActionMenuPresenter$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->a()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->B:Landroidx/appcompat/widget/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    return v0
.end method

.method public k()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroidx/appcompat/widget/ActionMenuPresenter$e;

    iget-object v3, p0, Landroidx/appcompat/view/menu/b;->f:Landroid/content/Context;

    iget-object v4, p0, Landroidx/appcompat/view/menu/b;->g:Landroidx/appcompat/view/menu/f;

    iget-object v5, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->n:Landroidx/appcompat/widget/ActionMenuPresenter$d;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/widget/ActionMenuPresenter$e;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroid/content/Context;Landroidx/appcompat/view/menu/f;Landroid/view/View;Z)V

    .line 4
    new-instance v1, Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/widget/ActionMenuPresenter$c;-><init>(Landroidx/appcompat/widget/ActionMenuPresenter;Landroidx/appcompat/widget/ActionMenuPresenter$e;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/b;->l:Landroidx/appcompat/view/menu/n;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuPresenter;->D:Landroidx/appcompat/widget/ActionMenuPresenter$c;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 6
    invoke-super {p0, v0}, Landroidx/appcompat/view/menu/b;->a(Landroidx/appcompat/view/menu/r;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
