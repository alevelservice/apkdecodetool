.class Li/g0/i/f$a;
.super Lj/i;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/g0/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field f:Z

.field g:J

.field final synthetic h:Li/g0/i/f;


# direct methods
.method constructor <init>(Li/g0/i/f;Lj/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/g0/i/f$a;->h:Li/g0/i/f;

    .line 2
    invoke-direct {p0, p2}, Lj/i;-><init>(Lj/u;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Li/g0/i/f$a;->f:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Li/g0/i/f$a;->g:J

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Li/g0/i/f$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/g0/i/f$a;->f:Z

    .line 3
    iget-object v3, p0, Li/g0/i/f$a;->h:Li/g0/i/f;

    iget-object v1, v3, Li/g0/i/f;->b:Li/g0/f/g;

    const/4 v2, 0x0

    iget-wide v4, p0, Li/g0/i/f$a;->g:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Li/g0/f/g;->a(ZLi/g0/g/c;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public b(Lj/c;J)J
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lj/i;->b()Lj/u;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lj/u;->b(Lj/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 2
    iget-wide v0, p0, Li/g0/i/f$a;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Li/g0/i/f$a;->g:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Li/g0/i/f$a;->a(Ljava/io/IOException;)V

    .line 4
    throw p1
.end method

.method public close()V
    .locals 1

    .line 1
    invoke-super {p0}, Lj/i;->close()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Li/g0/i/f$a;->a(Ljava/io/IOException;)V

    return-void
.end method
