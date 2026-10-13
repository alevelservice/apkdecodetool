.class public Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

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
        Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private e:Landroidx/appcompat/view/menu/f;

.field private f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->h:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/f;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->e:Landroidx/appcompat/view/menu/f;

    .line 3
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    iget-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->e:Landroidx/appcompat/view/menu/f;

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->initialize(Landroidx/appcompat/view/menu/f;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 8
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    check-cast p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    iget p1, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->e:I

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/f;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->updateMenuView()V

    :goto_0
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
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->f:Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState;->e:I

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->g:Z

    return-void
.end method

.method public b(Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationPresenter;->h:I

    return v0
.end method
