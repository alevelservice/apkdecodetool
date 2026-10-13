.class final Landroidx/appcompat/view/menu/CascadingMenuPopup;
.super Landroidx/appcompat/view/menu/k;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroidx/appcompat/view/menu/m;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/CascadingMenuPopup$d;,
        Landroidx/appcompat/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field private static final F:I


# instance fields
.field private A:Z

.field private B:Landroidx/appcompat/view/menu/m$a;

.field C:Landroid/view/ViewTreeObserver;

.field private D:Landroid/widget/PopupWindow$OnDismissListener;

.field E:Z

.field private final f:Landroid/content/Context;

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:Z

.field final k:Landroid/os/Handler;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/f;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/appcompat/view/menu/CascadingMenuPopup$d;",
            ">;"
        }
    .end annotation
.end field

.field final n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final o:Landroid/view/View$OnAttachStateChangeListener;

.field private final p:Landroidx/appcompat/widget/t;

.field private q:I

.field private r:I

.field private s:Landroid/view/View;

.field t:Landroid/view/View;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, La/a/g;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->F:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/view/menu/k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    .line 4
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$a;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$b;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View$OnAttachStateChangeListener;

    .line 6
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$c;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:Landroidx/appcompat/widget/t;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 8
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    .line 9
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 11
    iput p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:I

    .line 12
    iput p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:I

    .line 13
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->j:Z

    .line 14
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Z

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, La/a/d;->abc_config_prefDialogWidth:I

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 19
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->g:I

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/f;)Landroid/view/MenuItem;
    .locals 4
    .param p1    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/f;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroidx/appcompat/view/menu/CascadingMenuPopup$d;Landroidx/appcompat/view/menu/f;)Landroid/view/View;
    .locals 7
    .param p1    # Landroidx/appcompat/view/menu/CascadingMenuPopup$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/f;)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a()Landroid/widget/ListView;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 12
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 13
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 14
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/e;

    goto :goto_0

    .line 15
    :cond_1
    check-cast v1, Landroidx/appcompat/view/menu/e;

    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->getCount()I

    move-result v4

    :goto_1
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    .line 17
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/e;->getItem(I)Landroidx/appcompat/view/menu/i;

    move-result-object v6

    if-ne p2, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    if-ne v3, v5, :cond_4

    return-object v0

    :cond_4
    add-int/2addr v3, v2

    .line 18
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p2

    sub-int/2addr v3, p2

    if-ltz v3, :cond_6

    .line 19
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p2

    if-lt v3, p2, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_3
    return-object v0
.end method

.method private c(Landroidx/appcompat/view/menu/f;)I
    .locals 3
    .param p1    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 4
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private d(I)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 4
    iget-object v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 5
    iget v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    .line 6
    aget v1, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    .line 7
    iget p1, v3, Landroid/graphics/Rect;->right:I

    if-le v1, p1, :cond_0

    return v5

    :cond_0
    return v2

    .line 8
    :cond_1
    aget v0, v1, v5

    sub-int/2addr v0, p1

    if-gez v0, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method private d(Landroidx/appcompat/view/menu/f;)V
    .locals 14
    .param p1    # Landroidx/appcompat/view/menu/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 10
    new-instance v1, Landroidx/appcompat/view/menu/e;

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->j:Z

    sget v3, Landroidx/appcompat/view/menu/CascadingMenuPopup;->F:I

    invoke-direct {v1, p1, v0, v2, v3}, Landroidx/appcompat/view/menu/e;-><init>(Landroidx/appcompat/view/menu/f;Landroid/view/LayoutInflater;ZI)V

    .line 11
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Z

    if-eqz v2, :cond_0

    .line 12
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/e;->a(Z)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-static {p1}, Landroidx/appcompat/view/menu/k;->b(Landroidx/appcompat/view/menu/f;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/e;->a(Z)V

    .line 15
    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    iget v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->g:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v4}, Landroidx/appcompat/view/menu/k;->a(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v2

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->g()Landroidx/appcompat/widget/MenuPopupWindow;

    move-result-object v4

    .line 17
    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 18
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->e(I)V

    .line 19
    iget v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    invoke-virtual {v4, v1}, Landroidx/appcompat/widget/ListPopupWindow;->f(I)V

    .line 20
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 21
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 22
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a(Landroidx/appcompat/view/menu/CascadingMenuPopup$d;Landroidx/appcompat/view/menu/f;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v1, v5

    move-object v6, v1

    :goto_1
    const/4 v7, 0x0

    if-eqz v6, :cond_9

    .line 23
    invoke-virtual {v4, v7}, Landroidx/appcompat/widget/MenuPopupWindow;->c(Z)V

    .line 24
    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->a(Ljava/lang/Object;)V

    .line 25
    invoke-direct {p0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->d(I)I

    move-result v8

    if-ne v8, v3, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 26
    :goto_2
    iput v8, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    .line 27
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    const/4 v11, 0x5

    if-lt v8, v10, :cond_4

    .line 28
    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    const/4 v8, 0x2

    new-array v10, v8, [I

    .line 29
    iget-object v12, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    invoke-virtual {v12, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v8, v8, [I

    .line 30
    invoke-virtual {v6, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 31
    iget v12, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_5

    .line 32
    aget v12, v10, v7

    iget-object v13, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v10, v7

    .line 33
    aget v12, v8, v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v13

    add-int/2addr v12, v13

    aput v12, v8, v7

    .line 34
    :cond_5
    aget v12, v8, v7

    aget v13, v10, v7

    sub-int/2addr v12, v13

    .line 35
    aget v8, v8, v3

    aget v10, v10, v3

    sub-int/2addr v8, v10

    .line 36
    :goto_3
    iget v10, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_7

    if-eqz v9, :cond_6

    goto :goto_4

    .line 37
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_5

    :cond_7
    if-eqz v9, :cond_8

    .line 38
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    add-int/2addr v12, v2

    goto :goto_6

    :cond_8
    :goto_5
    sub-int/2addr v12, v2

    .line 39
    :goto_6
    invoke-virtual {v4, v12}, Landroidx/appcompat/widget/ListPopupWindow;->a(I)V

    .line 40
    invoke-virtual {v4, v3}, Landroidx/appcompat/widget/ListPopupWindow;->b(Z)V

    .line 41
    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/ListPopupWindow;->b(I)V

    goto :goto_7

    .line 42
    :cond_9
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    if-eqz v2, :cond_a

    .line 43
    iget v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->a(I)V

    .line 44
    :cond_a
    iget-boolean v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->w:Z

    if-eqz v2, :cond_b

    .line 45
    iget v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:I

    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->b(I)V

    .line 46
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/k;->f()Landroid/graphics/Rect;

    move-result-object v2

    .line 47
    invoke-virtual {v4, v2}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/graphics/Rect;)V

    .line 48
    :goto_7
    new-instance v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    iget v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    invoke-direct {v2, v4, p1, v3}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/f;I)V

    .line 49
    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 51
    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->e()Landroid/widget/ListView;

    move-result-object v2

    .line 52
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v1, :cond_c

    .line 53
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->A:Z

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 54
    sget v1, La/a/g;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v0, v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x1020016

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 57
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->h()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v2, v0, v5, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 59
    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_c
    return-void
.end method

.method private g()Landroidx/appcompat/widget/MenuPopupWindow;
    .locals 5

    .line 1
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:I

    iget v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:Landroidx/appcompat/widget/t;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->a(Landroidx/appcompat/widget/t;)V

    .line 3
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Landroid/view/View;)V

    .line 6
    iget v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->f(I)V

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->a(Z)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->g(I)V

    return-object v0
.end method

.method private h()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 55
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    if-eq v0, p1, :cond_0

    .line 56
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 58
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)I

    move-result v0

    .line 59
    invoke-static {p1, v0}, Landroidx/core/view/e;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 61
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 62
    iget p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    .line 63
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)I

    move-result v0

    .line 64
    invoke-static {p1, v0}, Landroidx/core/view/e;->a(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:I

    :cond_0
    return-void
.end method

.method public a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 65
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->D:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/f;->a(Landroidx/appcompat/view/menu/m;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->d(Landroidx/appcompat/view/menu/f;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 5

    .line 31
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c(Landroidx/appcompat/view/menu/f;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 32
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 33
    iget-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 34
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/f;->a(Z)V

    .line 35
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 36
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/f;->b(Landroidx/appcompat/view/menu/m;)V

    .line 37
    iget-boolean v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->E:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->b(Ljava/lang/Object;)V

    .line 39
    iget-object v1, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/ListPopupWindow;->d(I)V

    .line 40
    :cond_2
    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 41
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 42
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    iget v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->c:I

    iput v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    goto :goto_0

    .line 43
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    :goto_0
    if-nez v0, :cond_7

    .line 44
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 45
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroidx/appcompat/view/menu/m$a;

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 46
    invoke-interface {p2, p1, v0}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/f;Z)V

    .line 47
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 49
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 50
    :cond_5
    iput-object v2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/view/ViewTreeObserver;

    .line 51
    :cond_6
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 52
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->D:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    .line 53
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 54
    iget-object p1, p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/f;->a(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 23
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 21
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 22
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/k;->a(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/e;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/r;)Z
    .locals 4

    .line 24
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 25
    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    if-ne p1, v3, :cond_0

    .line 26
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/f;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a(Landroidx/appcompat/view/menu/f;)V

    .line 29
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_2

    .line 30
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/f;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    .line 3
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Z

    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->w:Z

    .line 6
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->A:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    new-array v2, v0, [Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 4
    aget-object v2, v1, v0

    .line 5
    iget-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()Landroid/widget/ListView;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onDismiss()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 3
    iget-object v4, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ListPopupWindow;->c()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 4
    iget-object v0, v3, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/f;->a(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/f;

    .line 3
    invoke-direct {p0, v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->d(Landroidx/appcompat/view/menu/f;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:Landroid/view/View;

    .line 6
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->C:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method
