.class public Lcom/google/android/material/internal/g;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/g$d;,
        Lcom/google/android/material/internal/g$f;,
        Lcom/google/android/material/internal/g$g;,
        Lcom/google/android/material/internal/g$e;,
        Lcom/google/android/material/internal/g$c;,
        Lcom/google/android/material/internal/g$b;,
        Lcom/google/android/material/internal/g$i;,
        Lcom/google/android/material/internal/g$j;,
        Lcom/google/android/material/internal/g$h;,
        Lcom/google/android/material/internal/g$k;
    }
.end annotation


# instance fields
.field private e:Lcom/google/android/material/internal/NavigationMenuView;

.field f:Landroid/widget/LinearLayout;

.field private g:Landroidx/appcompat/view/menu/m$a;

.field h:Landroidx/appcompat/view/menu/f;

.field private i:I

.field j:Lcom/google/android/material/internal/g$c;

.field k:Landroid/view/LayoutInflater;

.field l:I

.field m:Z

.field n:Landroid/content/res/ColorStateList;

.field o:Landroid/content/res/ColorStateList;

.field p:Landroid/graphics/drawable/Drawable;

.field q:I

.field r:I

.field private s:I

.field t:I

.field final u:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/material/internal/g$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/g$a;-><init>(Lcom/google/android/material/internal/g;)V

    iput-object v0, p0, Lcom/google/android/material/internal/g;->u:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    sget v1, Le/i/b/c/h;->design_navigation_menu:I

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object p1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 9
    iget-object p1, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    if-nez p1, :cond_0

    .line 10
    new-instance p1, Lcom/google/android/material/internal/g$c;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/g$c;-><init>(Lcom/google/android/material/internal/g;)V

    iput-object p1, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    sget v0, Le/i/b/c/h;->design_navigation_item_header:I

    iget-object v1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 12
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    .line 13
    iget-object p1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v0, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/internal/g;->h:Landroidx/appcompat/view/menu/f;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 4
    sget p2, Le/i/b/c/d;->design_navigation_separator_vertical_padding:I

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/g;->t:I

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    iput-object p1, p0, Lcom/google/android/material/internal/g;->o:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/google/android/material/internal/g;->p:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 19
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 20
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v0, "android:menu:adapter"

    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    invoke-virtual {v1, v0}, Lcom/google/android/material/internal/g$c;->a(Landroid/os/Bundle;)V

    :cond_1
    const-string v0, "android:menu:header"

    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 26
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    iget-object p1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/material/internal/g;->g:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/f;Z)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    iget-object v0, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g$c;->a(Landroidx/appcompat/view/menu/i;)V

    return-void
.end method

.method public a(Landroidx/core/view/e0;)V
    .locals 4

    .line 35
    invoke-virtual {p1}, Landroidx/core/view/e0;->g()I

    move-result v0

    .line 36
    iget v1, p0, Lcom/google/android/material/internal/g;->s:I

    if-eq v1, v0, :cond_0

    .line 37
    iput v0, p0, Lcom/google/android/material/internal/g;->s:I

    .line 38
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    iget v1, p0, Lcom/google/android/material/internal/g;->s:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroidx/core/view/e0;)Landroidx/core/view/e0;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iget-object p1, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/material/internal/g$c;->f()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:list"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/material/internal/g$c;->d()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android:menu:adapter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    iget-object v2, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    const-string v2, "android:menu:header"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 12
    iget-object v0, p0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Landroid/view/View;)V

    return-object p1
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    iput-object p1, p0, Lcom/google/android/material/internal/g;->n:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/google/android/material/internal/g;->e:Lcom/google/android/material/internal/NavigationMenuView;

    iget v0, p0, Lcom/google/android/material/internal/g;->s:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g$c;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Landroidx/appcompat/view/menu/i;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/material/internal/g;->j:Lcom/google/android/material/internal/g$c;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g$c;->e()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/g;->i:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/g;->q:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/google/android/material/internal/g;->r:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method public f()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/google/android/material/internal/g;->q:I

    return v0
.end method

.method public f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/google/android/material/internal/g;->l:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/internal/g;->m:Z

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/g;->r:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/internal/g;->i:I

    return v0
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public i()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g;->o:Landroid/content/res/ColorStateList;

    return-object v0
.end method
