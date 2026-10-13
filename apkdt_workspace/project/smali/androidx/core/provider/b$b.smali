.class Landroidx/core/provider/b$b;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Landroidx/core/provider/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/b;->a(Landroid/content/Context;Landroidx/core/provider/a;Landroidx/core/content/res/e$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/provider/c$d<",
        "Landroidx/core/provider/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/content/res/e$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/content/res/e$a;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/b$b;->a:Landroidx/core/content/res/e$a;

    iput-object p2, p0, Landroidx/core/provider/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/provider/b$g;)V
    .locals 2

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/core/provider/b$b;->a:Landroidx/core/content/res/e$a;

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/core/provider/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroidx/core/content/res/e$a;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p1, Landroidx/core/provider/b$g;->b:I

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/core/provider/b$b;->a:Landroidx/core/content/res/e$a;

    iget-object p1, p1, Landroidx/core/provider/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Landroidx/core/provider/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroidx/core/content/res/e$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/core/provider/b$b;->a:Landroidx/core/content/res/e$a;

    iget-object v1, p0, Landroidx/core/provider/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroidx/core/content/res/e$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/core/provider/b$g;

    invoke-virtual {p0, p1}, Landroidx/core/provider/b$b;->a(Landroidx/core/provider/b$g;)V

    return-void
.end method
