.class public abstract Lkotlinx/coroutines/v;
.super Lkotlinx/coroutines/internal/k;
.source "CompletionHandler.kt"

# interfaces
.implements Lkotlin/jvm/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/k;",
        "Lkotlin/jvm/c/b<",
        "Ljava/lang/Throwable;",
        "Lkotlin/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/k;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
