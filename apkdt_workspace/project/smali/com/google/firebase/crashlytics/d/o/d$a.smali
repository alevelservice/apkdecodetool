.class Lcom/google/firebase/crashlytics/d/o/d$a;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Le/i/b/b/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/c;Ljava/util/concurrent/Executor;)Le/i/b/b/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/b/d/g<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/d/o/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/o/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Le/i/b/b/d/h;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/o/d$a;->a(Ljava/lang/Void;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Void;)Le/i/b/b/d/h;
    .locals 4
    .param p1    # Ljava/lang/Void;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            ")",
            "Le/i/b/b/d/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    .line 3
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/o/d;->b(Lcom/google/firebase/crashlytics/d/o/d;)Lcom/google/firebase/crashlytics/d/o/j/e;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/d;)Lcom/google/firebase/crashlytics/d/o/i/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/crashlytics/d/o/j/e;->a(Lcom/google/firebase/crashlytics/d/o/i/g;Z)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    .line 5
    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/o/d;->c(Lcom/google/firebase/crashlytics/d/o/d;)Lcom/google/firebase/crashlytics/d/o/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/d/o/f;->a(Lorg/json/JSONObject;)Lcom/google/firebase/crashlytics/d/o/i/f;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-static {v1}, Lcom/google/firebase/crashlytics/d/o/d;->d(Lcom/google/firebase/crashlytics/d/o/d;)Lcom/google/firebase/crashlytics/d/o/a;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/o/i/f;->d()J

    move-result-wide v2

    .line 8
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/d/o/a;->a(JLorg/json/JSONObject;)V

    .line 9
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    const-string v2, "Loaded settings: "

    invoke-static {v1, p1, v2}, Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/d;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/d;)Lcom/google/firebase/crashlytics/d/o/i/g;

    move-result-object v1

    iget-object v1, v1, Lcom/google/firebase/crashlytics/d/o/i/g;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/d/o/d;->a(Lcom/google/firebase/crashlytics/d/o/d;Ljava/lang/String;)Z

    .line 11
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/o/d;->e(Lcom/google/firebase/crashlytics/d/o/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/o/d;->f(Lcom/google/firebase/crashlytics/d/o/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/i/b/b/d/i;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/o/i/f;->c()Lcom/google/firebase/crashlytics/d/o/i/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 13
    new-instance p1, Le/i/b/b/d/i;

    invoke-direct {p1}, Le/i/b/b/d/i;-><init>()V

    .line 14
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/d/o/i/f;->c()Lcom/google/firebase/crashlytics/d/o/i/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/o/d$a;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/o/d;->f(Lcom/google/firebase/crashlytics/d/o/d;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    .line 16
    invoke-static {p1}, Le/i/b/b/d/k;->a(Ljava/lang/Object;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
