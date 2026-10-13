.class Lcom/google/firebase/crashlytics/d/h/m$a;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/m;->a(Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;
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
.field final synthetic e:Lcom/google/firebase/crashlytics/d/o/e;

.field final synthetic f:Lcom/google/firebase/crashlytics/d/h/m;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m$a;->f:Lcom/google/firebase/crashlytics/d/h/m;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/m$a;->e:Lcom/google/firebase/crashlytics/d/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Le/i/b/b/d/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m$a;->f:Lcom/google/firebase/crashlytics/d/h/m;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/m$a;->e:Lcom/google/firebase/crashlytics/d/o/e;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m$a;->call()Le/i/b/b/d/h;

    move-result-object v0

    return-object v0
.end method
