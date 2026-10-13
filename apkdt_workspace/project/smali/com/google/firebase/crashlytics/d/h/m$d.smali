.class Lcom/google/firebase/crashlytics/d/h/m$d;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/m;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/firebase/crashlytics/d/h/m;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m$d;->e:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m$d;->e:Lcom/google/firebase/crashlytics/d/h/m;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/m;->b(Lcom/google/firebase/crashlytics/d/h/m;)Lcom/google/firebase/crashlytics/d/h/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/k;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/h/m$d;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
