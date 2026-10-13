.class public Li/b0$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Li/z;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Li/x;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:I

.field d:Ljava/lang/String;

.field e:Li/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field f:Li/r$a;

.field g:Li/c0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field h:Li/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field i:Li/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field j:Li/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Li/b0$a;->c:I

    .line 3
    new-instance v0, Li/r$a;

    invoke-direct {v0}, Li/r$a;-><init>()V

    iput-object v0, p0, Li/b0$a;->f:Li/r$a;

    return-void
.end method

.method constructor <init>(Li/b0;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Li/b0$a;->c:I

    .line 6
    iget-object v0, p1, Li/b0;->e:Li/z;

    iput-object v0, p0, Li/b0$a;->a:Li/z;

    .line 7
    iget-object v0, p1, Li/b0;->f:Li/x;

    iput-object v0, p0, Li/b0$a;->b:Li/x;

    .line 8
    iget v0, p1, Li/b0;->g:I

    iput v0, p0, Li/b0$a;->c:I

    .line 9
    iget-object v0, p1, Li/b0;->h:Ljava/lang/String;

    iput-object v0, p0, Li/b0$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Li/b0;->i:Li/q;

    iput-object v0, p0, Li/b0$a;->e:Li/q;

    .line 11
    iget-object v0, p1, Li/b0;->j:Li/r;

    invoke-virtual {v0}, Li/r;->a()Li/r$a;

    move-result-object v0

    iput-object v0, p0, Li/b0$a;->f:Li/r$a;

    .line 12
    iget-object v0, p1, Li/b0;->k:Li/c0;

    iput-object v0, p0, Li/b0$a;->g:Li/c0;

    .line 13
    iget-object v0, p1, Li/b0;->l:Li/b0;

    iput-object v0, p0, Li/b0$a;->h:Li/b0;

    .line 14
    iget-object v0, p1, Li/b0;->m:Li/b0;

    iput-object v0, p0, Li/b0$a;->i:Li/b0;

    .line 15
    iget-object v0, p1, Li/b0;->n:Li/b0;

    iput-object v0, p0, Li/b0$a;->j:Li/b0;

    .line 16
    iget-wide v0, p1, Li/b0;->o:J

    iput-wide v0, p0, Li/b0$a;->k:J

    .line 17
    iget-wide v0, p1, Li/b0;->p:J

    iput-wide v0, p0, Li/b0$a;->l:J

    return-void
.end method

.method private a(Ljava/lang/String;Li/b0;)V
    .locals 1

    .line 11
    iget-object v0, p2, Li/b0;->k:Li/c0;

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p2, Li/b0;->l:Li/b0;

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p2, Li/b0;->m:Li/b0;

    if-nez v0, :cond_1

    .line 14
    iget-object p2, p2, Li/b0;->n:Li/b0;

    if-nez p2, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private d(Li/b0;)V
    .locals 1

    .line 1
    iget-object p1, p1, Li/b0;->k:Li/c0;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Li/b0$a;
    .locals 0

    .line 3
    iput p1, p0, Li/b0$a;->c:I

    return-object p0
.end method

.method public a(J)Li/b0$a;
    .locals 0

    .line 19
    iput-wide p1, p0, Li/b0$a;->l:J

    return-object p0
.end method

.method public a(Li/b0;)Li/b0$a;
    .locals 1
    .param p1    # Li/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 9
    invoke-direct {p0, v0, p1}, Li/b0$a;->a(Ljava/lang/String;Li/b0;)V

    .line 10
    :cond_0
    iput-object p1, p0, Li/b0$a;->i:Li/b0;

    return-object p0
.end method

.method public a(Li/c0;)Li/b0$a;
    .locals 0
    .param p1    # Li/c0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    iput-object p1, p0, Li/b0$a;->g:Li/c0;

    return-object p0
.end method

.method public a(Li/q;)Li/b0$a;
    .locals 0
    .param p1    # Li/q;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Li/b0$a;->e:Li/q;

    return-object p0
.end method

.method public a(Li/r;)Li/b0$a;
    .locals 0

    .line 7
    invoke-virtual {p1}, Li/r;->a()Li/r$a;

    move-result-object p1

    iput-object p1, p0, Li/b0$a;->f:Li/r$a;

    return-object p0
.end method

.method public a(Li/x;)Li/b0$a;
    .locals 0

    .line 2
    iput-object p1, p0, Li/b0$a;->b:Li/x;

    return-object p0
.end method

.method public a(Li/z;)Li/b0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Li/b0$a;->a:Li/z;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Li/b0$a;
    .locals 0

    .line 4
    iput-object p1, p0, Li/b0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Li/b0$a;
    .locals 1

    .line 6
    iget-object v0, p0, Li/b0$a;->f:Li/r$a;

    invoke-virtual {v0, p1, p2}, Li/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Li/r$a;

    return-object p0
.end method

.method public a()Li/b0;
    .locals 3

    .line 20
    iget-object v0, p0, Li/b0$a;->a:Li/z;

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Li/b0$a;->b:Li/x;

    if-eqz v0, :cond_2

    .line 22
    iget v0, p0, Li/b0$a;->c:I

    if-ltz v0, :cond_1

    .line 23
    iget-object v0, p0, Li/b0$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Li/b0;

    invoke-direct {v0, p0}, Li/b0;-><init>(Li/b0$a;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Li/b0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(J)Li/b0$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Li/b0$a;->k:J

    return-object p0
.end method

.method public b(Li/b0;)Li/b0$a;
    .locals 1
    .param p1    # Li/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 2
    invoke-direct {p0, v0, p1}, Li/b0$a;->a(Ljava/lang/String;Li/b0;)V

    .line 3
    :cond_0
    iput-object p1, p0, Li/b0$a;->h:Li/b0;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Li/b0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0$a;->f:Li/r$a;

    invoke-virtual {v0, p1, p2}, Li/r$a;->d(Ljava/lang/String;Ljava/lang/String;)Li/r$a;

    return-object p0
.end method

.method public c(Li/b0;)Li/b0$a;
    .locals 0
    .param p1    # Li/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0, p1}, Li/b0$a;->d(Li/b0;)V

    .line 2
    :cond_0
    iput-object p1, p0, Li/b0$a;->j:Li/b0;

    return-object p0
.end method
