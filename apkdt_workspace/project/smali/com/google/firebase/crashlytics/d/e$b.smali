.class Lcom/google/firebase/crashlytics/d/e$b;
.super Ljava/lang/Object;
.source "Onboarding.java"

# interfaces
.implements Le/i/b/b/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/d/e;->a(Ljava/util/concurrent/Executor;Lcom/google/firebase/crashlytics/d/o/d;)V
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
        "Lcom/google/firebase/crashlytics/d/o/i/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/crashlytics/d/o/d;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/d/e;Lcom/google/firebase/crashlytics/d/o/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/e$b;->a:Lcom/google/firebase/crashlytics/d/o/d;

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

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/e$b;->a(Ljava/lang/Void;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Void;)Le/i/b/b/d/h;
    .locals 0
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
            "Lcom/google/firebase/crashlytics/d/o/i/b;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/d/e$b;->a:Lcom/google/firebase/crashlytics/d/o/d;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/o/d;->a()Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
