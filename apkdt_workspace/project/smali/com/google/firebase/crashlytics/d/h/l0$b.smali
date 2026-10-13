.class Lcom/google/firebase/crashlytics/d/h/l0$b;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Le/i/b/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/h/l0;->a(Le/i/b/b/d/h;Le/i/b/b/d/h;)Le/i/b/b/d/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/i/b/b/d/a<",
        "TT;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/i/b/b/d/i;


# direct methods
.method constructor <init>(Le/i/b/b/d/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/l0$b;->a:Le/i/b/b/d/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 0
    .param p1    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/h/l0$b;->a(Le/i/b/b/d/h;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/i/b/b/d/h;)Ljava/lang/Void;
    .locals 1
    .param p1    # Le/i/b/b/d/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/b/d/h<",
            "TT;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Le/i/b/b/d/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/l0$b;->a:Le/i/b/b/d/i;

    invoke-virtual {p1}, Le/i/b/b/d/h;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/l0$b;->a:Le/i/b/b/d/i;

    invoke-virtual {p1}, Le/i/b/b/d/h;->a()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/b/d/i;->b(Ljava/lang/Exception;)Z

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
