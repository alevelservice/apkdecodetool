.class Landroidx/core/provider/c$b$a;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Landroidx/core/provider/c$b;


# direct methods
.method constructor <init>(Landroidx/core/provider/c$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/c$b$a;->f:Landroidx/core/provider/c$b;

    iput-object p2, p0, Landroidx/core/provider/c$b$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/provider/c$b$a;->f:Landroidx/core/provider/c$b;

    iget-object v0, v0, Landroidx/core/provider/c$b;->g:Landroidx/core/provider/c$d;

    iget-object v1, p0, Landroidx/core/provider/c$b$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/core/provider/c$d;->a(Ljava/lang/Object;)V

    return-void
.end method
