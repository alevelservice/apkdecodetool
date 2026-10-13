.class Lcom/google/gson/internal/bind/TypeAdapters$18;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/r/c;Ljava/math/BigInteger;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/gson/r/c;->a(Ljava/lang/Number;)Lcom/google/gson/r/c;

    return-void
.end method

.method public bridge synthetic read(Lcom/google/gson/r/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$18;->read(Lcom/google/gson/r/a;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/r/a;)Ljava/math/BigInteger;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/google/gson/r/a;->C()Lcom/google/gson/r/b;

    move-result-object v0

    sget-object v1, Lcom/google/gson/r/b;->NULL:Lcom/google/gson/r/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/r/a;->A()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/gson/r/a;->B()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/gson/n;

    invoke-direct {v0, p1}, Lcom/google/gson/n;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic write(Lcom/google/gson/r/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$18;->a(Lcom/google/gson/r/c;Ljava/math/BigInteger;)V

    return-void
.end method
