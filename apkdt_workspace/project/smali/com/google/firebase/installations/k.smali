.class Lcom/google/firebase/installations/k;
.super Ljava/lang/Object;
.source "GetIdListener.java"

# interfaces
.implements Lcom/google/firebase/installations/n;


# instance fields
.field final a:Le/i/b/b/d/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/b/d/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/b/d/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/i<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/installations/k;->a:Le/i/b/b/d/i;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/installations/q/d;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/installations/q/d;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/installations/q/d;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/installations/q/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/installations/k;->a:Le/i/b/b/d/i;

    invoke-virtual {p1}, Lcom/google/firebase/installations/q/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/Exception;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
