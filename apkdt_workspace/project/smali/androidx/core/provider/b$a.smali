.class Landroidx/core/provider/b$a;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/provider/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Landroidx/core/provider/a;

.field final synthetic g:I

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/provider/a;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/b$a;->e:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/provider/b$a;->f:Landroidx/core/provider/a;

    iput p3, p0, Landroidx/core/provider/b$a;->g:I

    iput-object p4, p0, Landroidx/core/provider/b$a;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroidx/core/provider/b$g;
    .locals 4

    .line 2
    iget-object v0, p0, Landroidx/core/provider/b$a;->e:Landroid/content/Context;

    iget-object v1, p0, Landroidx/core/provider/b$a;->f:Landroidx/core/provider/a;

    iget v2, p0, Landroidx/core/provider/b$a;->g:I

    invoke-static {v0, v1, v2}, Landroidx/core/provider/b;->a(Landroid/content/Context;Landroidx/core/provider/a;I)Landroidx/core/provider/b$g;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroidx/core/provider/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 4
    sget-object v2, Landroidx/core/provider/b;->a:La/e/e;

    iget-object v3, p0, Landroidx/core/provider/b$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, La/e/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/provider/b$a;->call()Landroidx/core/provider/b$g;

    move-result-object v0

    return-object v0
.end method
