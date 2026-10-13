.class final Li/g0/i/h$a;
.super Ljava/lang/Object;
.source "Http2Reader.java"

# interfaces
.implements Lj/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/g0/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final e:Lj/e;

.field f:I

.field g:B

.field h:I

.field i:I

.field j:S


# direct methods
.method constructor <init>(Lj/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/g0/i/h$a;->e:Lj/e;

    return-void
.end method

.method private b()V
    .locals 7

    .line 8
    iget v0, p0, Li/g0/i/h$a;->h:I

    .line 9
    iget-object v1, p0, Li/g0/i/h$a;->e:Lj/e;

    invoke-static {v1}, Li/g0/i/h;->a(Lj/e;)I

    move-result v1

    iput v1, p0, Li/g0/i/h$a;->i:I

    iput v1, p0, Li/g0/i/h$a;->f:I

    .line 10
    iget-object v1, p0, Li/g0/i/h$a;->e:Lj/e;

    invoke-interface {v1}, Lj/e;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 11
    iget-object v2, p0, Li/g0/i/h$a;->e:Lj/e;

    invoke-interface {v2}, Lj/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    iput-byte v2, p0, Li/g0/i/h$a;->g:B

    .line 12
    sget-object v2, Li/g0/i/h;->i:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Li/g0/i/h;->i:Ljava/util/logging/Logger;

    iget v4, p0, Li/g0/i/h$a;->h:I

    iget v5, p0, Li/g0/i/h$a;->f:I

    iget-byte v6, p0, Li/g0/i/h$a;->g:B

    invoke-static {v3, v4, v5, v1, v6}, Li/g0/i/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    :cond_0
    iget-object v2, p0, Li/g0/i/h$a;->e:Lj/e;

    invoke-interface {v2}, Lj/e;->readInt()I

    move-result v2

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    iput v2, p0, Li/g0/i/h$a;->h:I

    const/16 v2, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    .line 14
    iget v1, p0, Li/g0/i/h$a;->h:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "TYPE_CONTINUATION streamId changed"

    invoke-static {v1, v0}, Li/g0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "%s != TYPE_CONTINUATION"

    invoke-static {v1, v0}, Li/g0/i/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    throw v4
.end method


# virtual methods
.method public b(Lj/c;J)J
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Li/g0/i/h$a;->i:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Li/g0/i/h$a;->e:Lj/e;

    iget-short v3, p0, Li/g0/i/h$a;->j:S

    int-to-long v3, v3

    invoke-interface {v0, v3, v4}, Lj/e;->skip(J)V

    const/4 v0, 0x0

    .line 3
    iput-short v0, p0, Li/g0/i/h$a;->j:S

    .line 4
    iget-byte v0, p0, Li/g0/i/h$a;->g:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    .line 5
    :cond_0
    invoke-direct {p0}, Li/g0/i/h$a;->b()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Li/g0/i/h$a;->e:Lj/e;

    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, Lj/u;->b(Lj/c;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_2

    return-wide v1

    .line 7
    :cond_2
    iget p3, p0, Li/g0/i/h$a;->i:I

    int-to-long v0, p3

    sub-long/2addr v0, p1

    long-to-int p3, v0

    iput p3, p0, Li/g0/i/h$a;->i:I

    return-wide p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public timeout()Lj/v;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0/i/h$a;->e:Lj/e;

    invoke-interface {v0}, Lj/u;->timeout()Lj/v;

    move-result-object v0

    return-object v0
.end method
