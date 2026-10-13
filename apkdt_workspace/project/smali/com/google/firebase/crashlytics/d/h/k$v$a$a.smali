.class Lcom/google/firebase/crashlytics/d/h/k$v$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Le/i/b/b/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k$v$a;->call()Le/i/b/b/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/b/d/g<",
        "Lcom/google/firebase/crashlytics/d/o/i/b;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lcom/google/firebase/crashlytics/d/h/k$v$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k$v$a;Ljava/util/List;ZLjava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->d:Lcom/google/firebase/crashlytics/d/h/k$v$a;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->b:Z

    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/o/i/b;)Le/i/b/b/d/h;
    .locals 5
    .param p1    # Lcom/google/firebase/crashlytics/d/o/i/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/d/o/i/b;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v1, "Received null app settings, cannot send reports during app startup."

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/d/m/c/c;

    .line 6
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/d/m/c/c;->getType()Lcom/google/firebase/crashlytics/d/m/c/c$a;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/crashlytics/d/m/c/c$a;->JAVA:Lcom/google/firebase/crashlytics/d/m/c/c$a;

    if-ne v3, v4, :cond_1

    .line 7
    iget-object v3, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->e:Ljava/lang/String;

    .line 8
    invoke-interface {v2}, Lcom/google/firebase/crashlytics/d/m/c/c;->c()Ljava/io/File;

    move-result-object v2

    .line 9
    invoke-static {v3, v2}, Lcom/google/firebase/crashlytics/d/h/k;->a(Ljava/lang/String;Ljava/io/File;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->d:Lcom/google/firebase/crashlytics/d/h/k$v$a;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->d(Lcom/google/firebase/crashlytics/d/h/k;)Le/i/b/b/d/h;

    .line 11
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->d:Lcom/google/firebase/crashlytics/d/h/k$v$a;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    .line 12
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->f(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/b$b;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/firebase/crashlytics/d/m/b$b;->a(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/m/b;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->a:Ljava/util/List;

    iget-boolean v3, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->b:Z

    iget-object v4, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->d:Lcom/google/firebase/crashlytics/d/h/k$v$a;

    iget-object v4, v4, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget v4, v4, Lcom/google/firebase/crashlytics/d/h/k$v;->b:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/firebase/crashlytics/d/m/b;->a(Ljava/util/List;ZF)V

    .line 14
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->d:Lcom/google/firebase/crashlytics/d/h/k$v$a;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->n(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/h0;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->c:Ljava/util/concurrent/Executor;

    .line 15
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/u;->getState(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/h/u;

    move-result-object p1

    .line 16
    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/d/h/u;)Le/i/b/b/d/h;

    .line 17
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->d:Lcom/google/firebase/crashlytics/d/h/k$v$a;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/h/k$v$a;->f:Lcom/google/firebase/crashlytics/d/h/k$v;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/h/k$v;->c:Lcom/google/firebase/crashlytics/d/h/k;

    iget-object p1, p1, Lcom/google/firebase/crashlytics/d/h/k;->x:Le/i/b/b/d/i;

    invoke-virtual {p1, v0}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 18
    invoke-static {v0}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Le/i/b/b/d/h;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/firebase/crashlytics/d/o/i/b;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k$v$a$a;->a(Lcom/google/firebase/crashlytics/d/o/i/b;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
