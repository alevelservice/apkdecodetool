.class public Lcom/google/android/material/internal/h;
.super Landroidx/appcompat/view/menu/r;
.source "NavigationSubMenu.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/internal/f;Landroidx/appcompat/view/menu/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/r;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/f;Landroidx/appcompat/view/menu/i;)V

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/view/menu/f;->b(Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/r;->t()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/f;->b(Z)V

    return-void
.end method
