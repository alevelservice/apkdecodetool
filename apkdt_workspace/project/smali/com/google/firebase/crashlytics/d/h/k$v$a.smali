.class Lcom/google/firebase/crashlytics/d/h/k$v$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k$v;->a(Ljava/lang/Boolean;)Le/i/b/b/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le/i/b/b/d/h<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Ljava/lang/Boolean;

.field final synthetic f:Lcom/google/firebase/crashlytics/d/h/k$v;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k$v;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->e:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Le/i/b/b/d/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->e(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/m/a;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Reports are being deleted."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/d/h/k;->j()[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->b([Ljava/io/File;)V

    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->e(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/d/m/a;->a(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->n(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/h0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/h0;->a()V

    .line 8
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/d/h/k;->x:Le/i/b/b/d/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v1

    const-string v2, "Reports are being sent."

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/k;->b(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/d/h/t;->a(Z)V

    .line 13
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/k;->c(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/d/h/i;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v3, v3, Lcom/google/firebase/crashlytics/d/h/k$v;->a:Le/i/b/b/d/h;

    new-instance v4, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;-><init>(Lcom/google/firebase/crashlytics/d/h/k$v$a;Ljava/util/List;ZLjava/util/concurrent/Executor;)V

    invoke-virtual {v3, v2, v4}, Le/i/b/b/d/h;->a(Ljava/util/concurrent/Executor;Le/i/b/b/d/g;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k$v$a;->call()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
