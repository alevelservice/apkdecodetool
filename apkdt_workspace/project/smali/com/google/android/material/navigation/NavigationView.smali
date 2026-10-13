.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "NavigationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$b;
    }
.end annotation


# static fields
.field private static final j:[I

.field private static final k:[I


# instance fields
.field private final f:Lcom/google/android/material/internal/f;

.field private final g:Lcom/google/android/material/internal/g;

.field private final h:I

.field private i:Landroid/view/MenuInflater;

.field listener:Lcom/google/android/material/navigation/NavigationView$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    .line 1
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->j:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    .line 2
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->k:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Le/i/b/c/b;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lcom/google/android/material/internal/g;

    invoke-direct {v0}, Lcom/google/android/material/internal/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    .line 5
    new-instance v0, Lcom/google/android/material/internal/f;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    .line 6
    sget-object v3, Le/i/b/c/k;->NavigationView:[I

    sget v5, Le/i/b/c/j;->Widget_Design_NavigationView:I

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/k;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/d0;

    move-result-object p2

    .line 8
    sget p3, Le/i/b/c/k;->NavigationView_android_background:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/d0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 9
    sget p3, Le/i/b/c/k;->NavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 10
    sget p3, Le/i/b/c/k;->NavigationView_elevation:I

    .line 11
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/d0;->c(II)I

    move-result p3

    int-to-float p3, p3

    .line 12
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;F)V

    .line 13
    :cond_0
    sget p3, Le/i/b/c/k;->NavigationView_android_fitsSystemWindows:I

    .line 14
    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/d0;->a(IZ)Z

    move-result p3

    .line 15
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Z)V

    .line 16
    sget p3, Le/i/b/c/k;->NavigationView_android_maxWidth:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/d0;->c(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/navigation/NavigationView;->h:I

    .line 17
    sget p3, Le/i/b/c/k;->NavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 18
    sget p3, Le/i/b/c/k;->NavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/d0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :cond_1
    const p3, 0x1010038

    .line 19
    invoke-direct {p0, p3}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 20
    :goto_0
    sget v1, Le/i/b/c/k;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 21
    sget v1, Le/i/b/c/k;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v1, v0}, Landroidx/appcompat/widget/d0;->g(II)I

    move-result v1

    move v3, v1

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    .line 22
    sget v5, Le/i/b/c/k;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 23
    sget v4, Le/i/b/c/k;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/d0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    :cond_3
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    const v4, 0x1010036

    .line 24
    invoke-direct {p0, v4}, Lcom/google/android/material/navigation/NavigationView;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 25
    :cond_4
    sget v5, Le/i/b/c/k;->NavigationView_itemBackground:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/d0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 26
    sget v6, Le/i/b/c/k;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {p2, v6}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 27
    sget v6, Le/i/b/c/k;->NavigationView_itemHorizontalPadding:I

    .line 28
    invoke-virtual {p2, v6, v0}, Landroidx/appcompat/widget/d0;->c(II)I

    move-result v6

    .line 29
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v7, v6}, Lcom/google/android/material/internal/g;->d(I)V

    .line 30
    :cond_5
    sget v6, Le/i/b/c/k;->NavigationView_itemIconPadding:I

    .line 31
    invoke-virtual {p2, v6, v0}, Landroidx/appcompat/widget/d0;->c(II)I

    move-result v6

    .line 32
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    new-instance v8, Lcom/google/android/material/navigation/NavigationView$a;

    invoke-direct {v8, p0}, Lcom/google/android/material/navigation/NavigationView$a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/f;->a(Landroidx/appcompat/view/menu/f$a;)V

    .line 33
    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v7, v2}, Lcom/google/android/material/internal/g;->c(I)V

    .line 34
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    iget-object v7, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-virtual {v2, p1, v7}, Lcom/google/android/material/internal/g;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V

    .line 35
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/g;->a(Landroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_6

    .line 36
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/g;->f(I)V

    .line 37
    :cond_6
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v4}, Lcom/google/android/material/internal/g;->b(Landroid/content/res/ColorStateList;)V

    .line 38
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/g;->a(Landroid/graphics/drawable/Drawable;)V

    .line 39
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v6}, Lcom/google/android/material/internal/g;->e(I)V

    .line 40
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    iget-object p3, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/f;->a(Landroidx/appcompat/view/menu/m;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/g;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    sget p1, Le/i/b/c/k;->NavigationView_menu:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 43
    sget p1, Le/i/b/c/k;->NavigationView_menu:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/d0;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->inflateMenu(I)V

    .line 44
    :cond_7
    sget p1, Le/i/b/c/k;->NavigationView_headerLayout:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/d0;->g(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 45
    sget p1, Le/i/b/c/k;->NavigationView_headerLayout:I

    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/widget/d0;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->inflateHeaderView(I)Landroid/view/View;

    .line 46
    :cond_8
    invoke-virtual {p2}, Landroidx/appcompat/widget/d0;->b()V

    return-void
.end method

.method private a(I)Landroid/content/res/ColorStateList;
    .locals 9

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, La/a/k/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, La/a/a;->colorPrimary:I

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->k:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->j:[I

    aput-object v6, v5, v2

    sget-object v6, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->k:[I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v8

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/a/n/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/n/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Landroid/view/MenuInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(Landroid/view/View;)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->c()Landroidx/appcompat/view/menu/i;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->d()I

    move-result v0

    return v0
.end method

.method public getHeaderView(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->f()I

    move-result v0

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1
    .annotation build Landroidx/annotation/Dimension;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->g()I

    move-result v0

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->i()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0}, Lcom/google/android/material/internal/g;->h()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    return-object v0
.end method

.method public inflateHeaderView(I)Landroid/view/View;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateMenu(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/g;->b(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/g;->b(Z)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/g;->a(Z)V

    return-void
.end method

.method protected onInsetsChanged(Landroidx/core/view/e0;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(Landroidx/core/view/e0;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->h:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->h:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->g:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->g:Landroid/os/Bundle;

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    iget-object v2, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/f;->d(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->b(Landroid/view/View;)V

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(Landroidx/appcompat/view/menu/i;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Lcom/google/android/material/internal/f;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    check-cast p1, Landroidx/appcompat/view/menu/i;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(Landroidx/appcompat/view/menu/i;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->d(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DimenRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->d(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->e(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->e(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->f(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Lcom/google/android/material/internal/g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/g;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/navigation/NavigationView$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->listener:Lcom/google/android/material/navigation/NavigationView$b;

    return-void
.end method
