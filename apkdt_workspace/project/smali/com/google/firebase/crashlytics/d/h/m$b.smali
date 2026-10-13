.class Lcom/google/firebase/crashlytics/d/h/m$b;
.super Ljava/lang/Object;
.source "CrashlyticsCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/m;->d(Lcom/google/firebase/crashlytics/d/o/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/firebase/crashlytics/d/o/e;

.field final synthetic f:Lcom/google/firebase/crashlytics/d/h/m;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/m$b;->f:Lcom/google/firebase/crashlytics/d/h/m;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/m$b;->e:Lcom/google/firebase/crashlytics/d/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/m$b;->f:Lcom/google/firebase/crashlytics/d/h/m;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/m$b;->e:Lcom/google/firebase/crashlytics/d/o/e;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/m;->a(Lcom/google/firebase/crashlytics/d/h/m;Lcom/google/firebase/crashlytics/d/o/e;)Le/i/b/b/d/h;

    return-void
.end method
