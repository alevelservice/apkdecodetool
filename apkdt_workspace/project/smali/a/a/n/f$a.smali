.class public La/a/n/f$a;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements La/a/n/b$a;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/n/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/a/n/f;",
            ">;"
        }
    .end annotation
.end field

.field final d:La/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/g<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/a/n/f$a;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, La/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/a/n/f$a;->c:Ljava/util/ArrayList;

    .line 5
    new-instance p1, La/e/g;

    invoke-direct {p1}, La/e/g;-><init>()V

    iput-object p1, p0, La/a/n/f$a;->d:La/e/g;

    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    .line 6
    iget-object v0, p0, La/a/n/f$a;->d:La/e/g;

    invoke-virtual {v0, p1}, La/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroidx/appcompat/view/menu/o;

    iget-object v1, p0, La/a/n/f$a;->b:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, La/i/i/a/a;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;La/i/i/a/a;)V

    .line 8
    iget-object v1, p0, La/a/n/f$a;->d:La/e/g;

    invoke-virtual {v1, p1, v0}, La/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(La/a/n/b;)V
    .locals 1

    .line 5
    iget-object v0, p0, La/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, La/a/n/f$a;->b(La/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public a(La/a/n/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, La/a/n/f$a;->b(La/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, La/a/n/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public a(La/a/n/b;Landroid/view/MenuItem;)Z
    .locals 3

    .line 4
    iget-object v0, p0, La/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, La/a/n/f$a;->b(La/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v1, Landroidx/appcompat/view/menu/j;

    iget-object v2, p0, La/a/n/f$a;->b:Landroid/content/Context;

    check-cast p2, La/i/i/a/b;

    invoke-direct {v1, v2, p2}, Landroidx/appcompat/view/menu/j;-><init>(Landroid/content/Context;La/i/i/a/b;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public b(La/a/n/b;)Landroid/view/ActionMode;
    .locals 4

    .line 4
    iget-object v0, p0, La/a/n/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, La/a/n/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/a/n/f;

    if-eqz v2, :cond_0

    .line 6
    iget-object v3, v2, La/a/n/f;->b:La/a/n/b;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, La/a/n/f;

    iget-object v1, p0, La/a/n/f$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, La/a/n/f;-><init>(Landroid/content/Context;La/a/n/b;)V

    .line 8
    iget-object p1, p0, La/a/n/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b(La/a/n/b;Landroid/view/Menu;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La/a/n/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, La/a/n/f$a;->b(La/a/n/b;)Landroid/view/ActionMode;

    move-result-object p1

    .line 2
    invoke-direct {p0, p2}, La/a/n/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
