.class Lcom/google/firebase/crashlytics/d/h/k$w;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/m/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/k;->q()Lcom/google/firebase/crashlytics/d/m/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/d/h/k;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/h/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$w;->a:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/m/b;
    .locals 9
    .param p1    # Lcom/google/firebase/crashlytics/d/o/i/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->c:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->d:Ljava/lang/String;

    .line 3
    iget-object v3, p1, Lcom/google/firebase/crashlytics/d/o/i/b;->e:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/h/k$w;->a:Lcom/google/firebase/crashlytics/d/h/k;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/crashlytics/d/h/k;->a(Lcom/google/firebase/crashlytics/d/h/k;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/crashlytics/d/m/d/b;

    move-result-object v7

    .line 5
    new-instance v0, Lcom/google/firebase/crashlytics/d/m/b;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/h/k$w;->a:Lcom/google/firebase/crashlytics/d/h/k;

    .line 6
    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/h/k;->g(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/h/b;

    move-result-object v1

    iget-object v4, v1, Lcom/google/firebase/crashlytics/d/h/b;->a:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/u;->getState(Lcom/google/firebase/crashlytics/d/o/i/b;)Lcom/google/firebase/crashlytics/d/h/u;

    move-result-object v5

    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$w;->a:Lcom/google/firebase/crashlytics/d/h/k;

    .line 8
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/k;->e(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/a;

    move-result-object v6

    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k$w;->a:Lcom/google/firebase/crashlytics/d/h/k;

    .line 9
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/h/k;->h(Lcom/google/firebase/crashlytics/d/h/k;)Lcom/google/firebase/crashlytics/d/m/b$a;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/firebase/crashlytics/d/m/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/d/h/u;Lcom/google/firebase/crashlytics/d/m/a;Lcom/google/firebase/crashlytics/d/m/d/b;Lcom/google/firebase/crashlytics/d/m/b$a;)V

    return-object v0
.end method
