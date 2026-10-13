.class Lcom/google/firebase/crashlytics/d/h/k$m;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/h/k$y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/d/h/j0;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k;Lcom/google/firebase/crashlytics/d/h/j0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/h/k$m;->a:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/l/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k$m;->a:Lcom/google/firebase/crashlytics/d/h/j0;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/h/j0;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/google/firebase/crashlytics/d/l/d;->a(Lcom/google/firebase/crashlytics/d/l/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
