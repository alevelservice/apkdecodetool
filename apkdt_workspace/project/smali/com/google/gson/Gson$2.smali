.class Lcom/google/gson/Gson$2;
.super Lcom/google/gson/TypeAdapter;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/Gson;->b(Z)Lcom/google/gson/TypeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/r/c;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/r/c;->q()Lcom/google/gson/r/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Lcom/google/gson/Gson;->a(D)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/gson/r/c;->a(Ljava/lang/Number;)Lcom/google/gson/r/c;

    return-void
.end method

.method public read(Lcom/google/gson/r/a;)Ljava/lang/Float;
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
    invoke-virtual {p1}, Lcom/google/gson/r/a;->t()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic read(Lcom/google/gson/r/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/gson/Gson$2;->read(Lcom/google/gson/r/a;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write(Lcom/google/gson/r/c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson$2;->a(Lcom/google/gson/r/c;Ljava/lang/Number;)V

    return-void
.end method
