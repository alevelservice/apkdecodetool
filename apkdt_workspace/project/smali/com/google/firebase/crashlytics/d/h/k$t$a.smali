.class Lcom/google/firebase/crashlytics/d/h/k$t$a;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Le/i/b/b/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k$t;->call()Le/i/b/b/d/h;
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
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lcom/google/firebase/crashlytics/d/h/k$t;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k$t;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$t$a;->b:Lcom/google/firebase/crashlytics/d/h/k$t;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$t$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/o/i/b;)Le/i/b/b/d/h;
    .locals 4
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

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object p1

    const-string v0, "Received null app settings, cannot send reports at crash time."

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/d/b;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$t$a;->b:Lcom/google/firebase/crashlytics/d/h/k$t;

    iget-object v0, v0, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/o/i/b;Z)V

    const/4 v0, 0x2

    new-array v0, v0, [Le/i/b/b/d/h;

    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$t$a;->b:Lcom/google/firebase/crashlytics/d/h/k$t;

    iget-object v3, v3, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    .line 7
    invoke-static {v3}, Lcom/google/firebase/crashlytics/d/h/k;->d(Lcom/google/firebase/crashlytics/d/h/k;)Le/i/b/b/d/h;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$t$a;->b:Lcom/google/firebase/crashlytics/d/h/k$t;

    iget-object v2, v2, Lcom/google/firebase/crashlytics/d/h/k$t;->i:Lcom/google/firebase/crashlytics/d/h/k;

    .line 8
    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/k;->n(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/h0;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$t$a;->a:Ljava/util/concurrent/Executor;

    .line 9
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/u;->getState(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/h/u;

    move-result-object p1

    .line 10
    invoke-virtual {v2, v3, p1}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/d/h/u;)Le/i/b/b/d/h;

    move-result-object p1

    aput-object p1, v0, v1

    .line 11
    invoke-static {v0}, Le/i/b/b/d/k;->a([Le/i/b/b/d/h;)Le/i/b/b/d/h;

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

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/h/k$t$a;->a(Lcom/google/firebase/crashlytics/d/o/i/b;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
