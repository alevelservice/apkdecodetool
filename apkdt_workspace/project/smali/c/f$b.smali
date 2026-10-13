.class final Lc/f$b;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/f;->b(Lc/g;Lc/d;Lc/f;Ljava/util/concurrent/Executor;Lc/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Lc/c;

.field final synthetic f:Lc/g;

.field final synthetic g:Lc/d;

.field final synthetic h:Lc/f;


# direct methods
.method constructor <init>(Lc/c;Lc/g;Lc/d;Lc/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/f$b;->e:Lc/c;

    iput-object p2, p0, Lc/f$b;->f:Lc/g;

    iput-object p3, p0, Lc/f$b;->g:Lc/d;

    iput-object p4, p0, Lc/f$b;->h:Lc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/f$b;->e:Lc/c;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/f$b;->g:Lc/d;

    iget-object v1, p0, Lc/f$b;->h:Lc/f;

    invoke-interface {v0, v1}, Lc/d;->a(Lc/f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/f$b;->f:Lc/g;

    invoke-virtual {v1, v0}, Lc/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lc/f$b;->f:Lc/g;

    invoke-virtual {v1, v0}, Lc/g;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 5
    :catch_1
    iget-object v0, p0, Lc/f$b;->f:Lc/g;

    invoke-virtual {v0}, Lc/g;->b()V

    :goto_0
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lc/c;->a()Z

    const/4 v0, 0x0

    throw v0
.end method
