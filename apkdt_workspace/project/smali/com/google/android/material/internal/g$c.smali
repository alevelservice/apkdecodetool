.class Lcom/google/android/material/internal/g$c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/google/android/material/internal/g$k;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/g$e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/appcompat/view/menu/i;

.field private e:Z

.field final synthetic f:Lcom/google/android/material/internal/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Lcom/google/android/material/internal/g$c;->g()V

    return-void
.end method

.method private a(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 24
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/g$g;

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lcom/google/android/material/internal/g$g;->b:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/material/internal/g$c;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/google/android/material/internal/g$c;->e:Z

    .line 3
    iget-object v2, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget-object v2, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/material/internal/g$d;

    invoke-direct {v3}, Lcom/google/android/material/internal/g$d;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 5
    iget-object v3, v0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v3, v3, Lcom/google/android/material/internal/g;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/f;->n()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v3, :cond_f

    .line 6
    iget-object v8, v0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v8, v8, Lcom/google/android/material/internal/g;->h:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/f;->n()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/i;

    .line 7
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 8
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/g$c;->a(Landroidx/appcompat/view/menu/i;)V

    .line 9
    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 10
    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/i;->c(Z)V

    .line 11
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 12
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 13
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v2, :cond_3

    .line 14
    iget-object v10, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/g$f;

    iget-object v12, v0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget v12, v12, Lcom/google/android/material/internal/g;->t:I

    invoke-direct {v11, v12, v4}, Lcom/google/android/material/internal/g$f;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    iget-object v10, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/g$g;

    invoke-direct {v11, v8}, Lcom/google/android/material/internal/g$g;-><init>(Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v10, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 17
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_8

    .line 18
    invoke-interface {v9, v12}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/i;

    .line 19
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    .line 20
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    const/4 v13, 0x1

    .line 21
    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 22
    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/i;->c(Z)V

    .line 23
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 24
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/g$c;->a(Landroidx/appcompat/view/menu/i;)V

    .line 25
    :cond_6
    iget-object v15, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/material/internal/g$g;

    invoke-direct {v1, v14}, Lcom/google/android/material/internal/g$g;-><init>(Landroidx/appcompat/view/menu/i;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    .line 26
    iget-object v1, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lcom/google/android/material/internal/g$c;->a(II)V

    goto :goto_4

    .line 27
    :cond_9
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getGroupId()I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 28
    iget-object v5, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 29
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    const/4 v5, 0x0

    :goto_2
    if-eqz v2, :cond_b

    add-int/lit8 v7, v7, 0x1

    .line 30
    iget-object v6, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    new-instance v9, Lcom/google/android/material/internal/g$f;

    iget-object v10, v0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget v10, v10, Lcom/google/android/material/internal/g;->t:I

    invoke-direct {v9, v10, v10}, Lcom/google/android/material/internal/g$f;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v6, v5

    goto :goto_3

    :cond_c
    if-nez v6, :cond_d

    .line 31
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/i;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 32
    iget-object v5, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v7, v5}, Lcom/google/android/material/internal/g$c;->a(II)V

    const/4 v6, 0x1

    .line 33
    :cond_d
    :goto_3
    new-instance v5, Lcom/google/android/material/internal/g$g;

    invoke-direct {v5, v8}, Lcom/google/android/material/internal/g$g;-><init>(Landroidx/appcompat/view/menu/i;)V

    .line 34
    iput-boolean v6, v5, Lcom/google/android/material/internal/g$g;->b:Z

    .line 35
    iget-object v8, v0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 36
    :cond_f
    iput-boolean v4, v0, Lcom/google/android/material/internal/g$c;->e:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "android:menu:checked"

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 32
    iput-boolean v2, p0, Lcom/google/android/material/internal/g$c;->e:Z

    .line 33
    iget-object v2, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 34
    iget-object v4, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/g$e;

    .line 35
    instance-of v5, v4, Lcom/google/android/material/internal/g$g;

    if-eqz v5, :cond_0

    .line 36
    check-cast v4, Lcom/google/android/material/internal/g$g;

    invoke-virtual {v4}, Lcom/google/android/material/internal/g$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v5

    if-ne v5, v1, :cond_0

    .line 38
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/g$c;->a(Landroidx/appcompat/view/menu/i;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/material/internal/g$c;->e:Z

    .line 40
    invoke-direct {p0}, Lcom/google/android/material/internal/g$c;->g()V

    :cond_2
    const-string v1, "android:menu:action_views"

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 42
    iget-object v1, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v0, v1, :cond_7

    .line 43
    iget-object v2, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/g$e;

    .line 44
    instance-of v3, v2, Lcom/google/android/material/internal/g$g;

    if-nez v3, :cond_3

    goto :goto_3

    .line 45
    :cond_3
    check-cast v2, Lcom/google/android/material/internal/g$g;

    invoke-virtual {v2}, Lcom/google/android/material/internal/g$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 46
    :cond_4
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 47
    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/ParcelableSparseArray;

    if-nez v2, :cond_6

    goto :goto_3

    .line 48
    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/i;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->d:Landroidx/appcompat/view/menu/i;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->d:Landroidx/appcompat/view/menu/i;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/i;->setChecked(Z)Landroid/view/MenuItem;

    .line 29
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/g$c;->d:Landroidx/appcompat/view/menu/i;

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/i;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/material/internal/g$k;)V
    .locals 1

    .line 22
    instance-of v0, p1, Lcom/google/android/material/internal/g$h;

    if-eqz v0, :cond_0

    .line 23
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->recycle()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/material/internal/g$k;I)V
    .locals 3

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/g$c;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/g$f;

    .line 4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/material/internal/g$f;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/material/internal/g$f;->a()I

    move-result p2

    invoke-virtual {p1, v1, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/g$g;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/material/internal/g$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/i;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 9
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 10
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-boolean v2, v0, Lcom/google/android/material/internal/g;->m:Z

    if-eqz v2, :cond_3

    .line 11
    iget v0, v0, Lcom/google/android/material/internal/g;->l:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/g$g;

    .line 18
    iget-boolean v0, p2, Lcom/google/android/material/internal/g$g;->b:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 19
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget v0, v0, Lcom/google/android/material/internal/g;->q:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 20
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget v0, v0, Lcom/google/android/material/internal/g;->r:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 21
    invoke-virtual {p2}, Lcom/google/android/material/internal/g$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->initialize(Landroidx/appcompat/view/menu/i;I)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/google/android/material/internal/g$c;->e:Z

    return-void
.end method

.method public b(I)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/internal/g$e;

    .line 4
    instance-of v0, p1, Lcom/google/android/material/internal/g$f;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/g$d;

    if-eqz v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/google/android/material/internal/g$g;

    if-eqz v0, :cond_3

    .line 7
    check-cast p1, Lcom/google/android/material/internal/g$g;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/material/internal/g$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown item type."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/g$c;->b(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/g$k;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/g$k;
    .locals 2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Lcom/google/android/material/internal/g$b;

    iget-object p2, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object p2, p2, Lcom/google/android/material/internal/g;->f:Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Lcom/google/android/material/internal/g$b;-><init>(Landroid/view/View;)V

    return-object p1

    .line 11
    :cond_1
    new-instance p2, Lcom/google/android/material/internal/g$i;

    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/g$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 12
    :cond_2
    new-instance p2, Lcom/google/android/material/internal/g$j;

    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    invoke-direct {p2, v0, p1}, Lcom/google/android/material/internal/g$j;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 13
    :cond_3
    new-instance p2, Lcom/google/android/material/internal/g$h;

    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->f:Lcom/google/android/material/internal/g;

    iget-object v1, v0, Lcom/google/android/material/internal/g;->k:Landroid/view/LayoutInflater;

    iget-object v0, v0, Lcom/google/android/material/internal/g;->u:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v1, p1, v0}, Lcom/google/android/material/internal/g$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/internal/g$k;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/g$c;->a(Lcom/google/android/material/internal/g$k;I)V

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 7

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/internal/g$c;->d:Landroidx/appcompat/view/menu/i;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v1

    const-string v2, "android:menu:checked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 7
    iget-object v4, p0, Lcom/google/android/material/internal/g$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/g$e;

    .line 8
    instance-of v5, v4, Lcom/google/android/material/internal/g$g;

    if-eqz v5, :cond_2

    .line 9
    check-cast v4, Lcom/google/android/material/internal/g$g;

    invoke-virtual {v4}, Lcom/google/android/material/internal/g$g;->a()Landroidx/appcompat/view/menu/i;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 11
    new-instance v6, Lcom/google/android/material/internal/ParcelableSparseArray;

    invoke-direct {v6}, Lcom/google/android/material/internal/ParcelableSparseArray;-><init>()V

    .line 12
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 13
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/i;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:action_views"

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public bridge synthetic d(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/material/internal/g$k;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/g$c;->a(Lcom/google/android/material/internal/g$k;)V

    return-void
.end method

.method public e()Landroidx/appcompat/view/menu/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/g$c;->d:Landroidx/appcompat/view/menu/i;

    return-object v0
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/internal/g$c;->g()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->c()V

    return-void
.end method
