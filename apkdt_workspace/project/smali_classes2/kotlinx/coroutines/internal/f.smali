.class public final Lkotlinx/coroutines/internal/f;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Lkotlinx/coroutines/e0;


# instance fields
.field private final e:Lkotlin/coroutines/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/f;)V
    .locals 1
    .param p1    # Lkotlin/coroutines/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/d/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlinx/coroutines/internal/f;->e:Lkotlin/coroutines/f;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/coroutines/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/internal/f;->e:Lkotlin/coroutines/f;

    return-object v0
.end method
