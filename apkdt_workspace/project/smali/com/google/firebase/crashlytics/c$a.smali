.class Lcom/google/firebase/crashlytics/c$a;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/c;->a(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/crashlytics/d/a;Lcom/google/firebase/k/a/a;)Lcom/google/firebase/crashlytics/c;
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
.field final synthetic e:Lcom/google/firebase/crashlytics/d/e;

.field final synthetic f:Ljava/util/concurrent/ExecutorService;

.field final synthetic g:Lcom/google/firebase/crashlytics/d/o/d;

.field final synthetic h:Z

.field final synthetic i:Lcom/google/firebase/crashlytics/d/h/m;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/e;Ljava/util/concurrent/ExecutorService;Lcom/google/firebase/crashlytics/d/o/d;ZLcom/google/firebase/crashlytics/d/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/c$a;->e:Lcom/google/firebase/crashlytics/d/e;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/c$a;->f:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/c$a;->g:Lcom/google/firebase/crashlytics/d/o/d;

    iput-boolean p4, p0, Lcom/google/firebase/crashlytics/c$a;->h:Z

    iput-object p5, p0, Lcom/google/firebase/crashlytics/c$a;->i:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/c$a;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c$a;->e:Lcom/google/firebase/crashlytics/d/e;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/c$a;->f:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/c$a;->g:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/crashlytics/d/e;->a(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/d/o/d;)V

    .line 3
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/c$a;->h:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/c$a;->i:Lcom/google/firebase/crashlytics/d/h/m;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/c$a;->g:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
