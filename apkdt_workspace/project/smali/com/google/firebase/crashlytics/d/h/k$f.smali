.class Lcom/google/firebase/crashlytics/d/h/k$f;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/google/firebase/crashlytics/d/h/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$f;->e:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$f;->e:Lcom/google/firebase/crashlytics/d/h/k;

    new-instance v1, Lcom/google/firebase/crashlytics/d/h/k$a0;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/d/h/k$a0;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/k;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a([Ljava/io/File;)V

    return-void
.end method
