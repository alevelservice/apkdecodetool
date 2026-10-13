.class final Lcom/pichillilorenzo/flutter_inappwebview/r$a;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pichillilorenzo/flutter_inappwebview/r;->a(Lg/a/c/a/k;Ljava/lang/String;Ljava/lang/Object;)Lcom/pichillilorenzo/flutter_inappwebview/r$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Lg/a/c/a/k;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Ljava/util/Map;

.field final synthetic i:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lg/a/c/a/k;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->e:Lg/a/c/a/k;

    iput-object p2, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->g:Ljava/lang/Object;

    iput-object p4, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->h:Ljava/util/Map;

    iput-object p5, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->e:Lg/a/c/a/k;

    iget-object v1, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/pichillilorenzo/flutter_inappwebview/r$a;->g:Ljava/lang/Object;

    new-instance v3, Lcom/pichillilorenzo/flutter_inappwebview/r$a$a;

    invoke-direct {v3, p0}, Lcom/pichillilorenzo/flutter_inappwebview/r$a$a;-><init>(Lcom/pichillilorenzo/flutter_inappwebview/r$a;)V

    invoke-virtual {v0, v1, v2, v3}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;Lg/a/c/a/k$d;)V

    return-void
.end method
