.class Lcom/google/firebase/crashlytics/d/h/k$c;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/j0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/firebase/crashlytics/d/h/j0;

.field final synthetic f:Lcom/google/firebase/crashlytics/d/h/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/h/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$c;->f:Lcom/google/firebase/crashlytics/d/h/k;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$c;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/k$c;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$c;->f:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->l(Lcom/google/firebase/crashlytics/d/h/k;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/d/b;->a()Lcom/google/firebase/crashlytics/d/b;

    move-result-object v0

    const-string v2, "Tried to cache user data while no session was open."

    invoke-virtual {v0, v2}, Lcom/google/firebase/crashlytics/d/b;->a(Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$c;->f:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/d/h/k;->n(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/h0;

    move-result-object v2

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/d/h/h0;->a(Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/google/firebase/crashlytics/d/h/b0;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$c;->f:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/d/h/k;->f()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/firebase/crashlytics/d/h/b0;-><init>(Ljava/io/File;)V

    iget-object v3, p0, Lcom/google/firebase/crashlytics/d/h/k$c;->e:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/crashlytics/d/h/b0;->a(Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/j0;)V

    return-object v1
.end method
