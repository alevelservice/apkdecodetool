.class public Lcom/google/android/gms/internal/clearcut/d1$a;
.super Lcom/google/android/gms/internal/clearcut/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/clearcut/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/clearcut/d1<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/clearcut/d1$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/clearcut/q<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/clearcut/d1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected f:Lcom/google/android/gms/internal/clearcut/d1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected g:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/clearcut/d1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/clearcut/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->e:Lcom/google/android/gms/internal/clearcut/d1;

    sget v0, Lcom/google/android/gms/internal/clearcut/d1$e;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1;

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->g:Z

    return-void
.end method

.method private static a(Lcom/google/android/gms/internal/clearcut/d1;Lcom/google/android/gms/internal/clearcut/d1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/u2;->a()Lcom/google/android/gms/internal/clearcut/u2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/clearcut/u2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/z2;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/clearcut/z2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/clearcut/d1;)Lcom/google/android/gms/internal/clearcut/d1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d1$a;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/clearcut/d1$a;->a(Lcom/google/android/gms/internal/clearcut/d1;Lcom/google/android/gms/internal/clearcut/d1;)V

    return-object p0
.end method

.method public final synthetic a()Lcom/google/android/gms/internal/clearcut/i2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->e:Lcom/google/android/gms/internal/clearcut/d1;

    return-object v0
.end method

.method protected final synthetic a(Lcom/google/android/gms/internal/clearcut/p;)Lcom/google/android/gms/internal/clearcut/q;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/clearcut/d1;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/d1$a;->a(Lcom/google/android/gms/internal/clearcut/d1;)Lcom/google/android/gms/internal/clearcut/d1$a;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->e:Lcom/google/android/gms/internal/clearcut/d1;

    sget v1, Lcom/google/android/gms/internal/clearcut/d1$e;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d1$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d1$a;->q()Lcom/google/android/gms/internal/clearcut/i2;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/d1;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/d1$a;->a(Lcom/google/android/gms/internal/clearcut/d1;)Lcom/google/android/gms/internal/clearcut/d1$a;

    return-object v0
.end method

.method protected f()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    sget v1, Lcom/google/android/gms/internal/clearcut/d1$e;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d1;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/d1$a;->a(Lcom/google/android/gms/internal/clearcut/d1;Lcom/google/android/gms/internal/clearcut/d1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->g:Z

    :cond_0
    return-void
.end method

.method public g()Lcom/google/android/gms/internal/clearcut/d1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/u2;->a()Lcom/google/android/gms/internal/clearcut/u2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/u2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/z2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/z2;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->g:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/d1$a;->f:Lcom/google/android/gms/internal/clearcut/d1;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/internal/clearcut/d1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d1$a;->q()Lcom/google/android/gms/internal/clearcut/i2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/google/android/gms/internal/clearcut/d1$e;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/u2;->a()Lcom/google/android/gms/internal/clearcut/u2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/clearcut/u2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/z2;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/clearcut/z2;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/internal/clearcut/d1$e;->b:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/clearcut/q3;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/clearcut/q3;-><init>(Lcom/google/android/gms/internal/clearcut/i2;)V

    throw v1
.end method

.method public final synthetic o()Lcom/google/android/gms/internal/clearcut/i2;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d1$a;->q()Lcom/google/android/gms/internal/clearcut/i2;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/d1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lcom/google/android/gms/internal/clearcut/d1$e;->a:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/u2;->a()Lcom/google/android/gms/internal/clearcut/u2;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/clearcut/u2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/z2;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/clearcut/z2;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    sget v1, Lcom/google/android/gms/internal/clearcut/d1$e;->b:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/clearcut/d1;->a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/clearcut/q3;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/clearcut/q3;-><init>(Lcom/google/android/gms/internal/clearcut/i2;)V

    throw v1
.end method

.method public synthetic q()Lcom/google/android/gms/internal/clearcut/i2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/d1$a;->g()Lcom/google/android/gms/internal/clearcut/d1;

    move-result-object v0

    return-object v0
.end method
