.class Lcom/google/firebase/crashlytics/d/h/i$a;
.super Ljava/lang/Object;
.source "CrashlyticsBackgroundWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/i;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/firebase/crashlytics/d/h/i;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/i$a;->e:Lcom/google/firebase/crashlytics/d/h/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/i$a;->e:Lcom/google/firebase/crashlytics/d/h/i;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/h/i;->a(Lcom/google/firebase/crashlytics/d/h/i;)Ljava/lang/ThreadLocal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
