.class Landroidx/core/view/ViewCompat$a;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->a(Landroid/view/View;Landroidx/core/view/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/view/s;


# direct methods
.method constructor <init>(Landroidx/core/view/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/ViewCompat$a;->a:Landroidx/core/view/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {p2}, Landroidx/core/view/e0;->a(Landroid/view/WindowInsets;)Landroidx/core/view/e0;

    move-result-object p2

    .line 2
    iget-object v0, p0, Landroidx/core/view/ViewCompat$a;->a:Landroidx/core/view/s;

    invoke-interface {v0, p1, p2}, Landroidx/core/view/s;->a(Landroid/view/View;Landroidx/core/view/e0;)Landroidx/core/view/e0;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroidx/core/view/e0;->k()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
