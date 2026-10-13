.class public final Li/b0;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/b0$a;
    }
.end annotation


# instance fields
.field final e:Li/z;

.field final f:Li/x;

.field final g:I

.field final h:Ljava/lang/String;

.field final i:Li/q;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final j:Li/r;

.field final k:Li/c0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final l:Li/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final m:Li/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final n:Li/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final o:J

.field final p:J

.field private volatile q:Li/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/b0$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Li/b0$a;->a:Li/z;

    iput-object v0, p0, Li/b0;->e:Li/z;

    .line 3
    iget-object v0, p1, Li/b0$a;->b:Li/x;

    iput-object v0, p0, Li/b0;->f:Li/x;

    .line 4
    iget v0, p1, Li/b0$a;->c:I

    iput v0, p0, Li/b0;->g:I

    .line 5
    iget-object v0, p1, Li/b0$a;->d:Ljava/lang/String;

    iput-object v0, p0, Li/b0;->h:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Li/b0$a;->e:Li/q;

    iput-object v0, p0, Li/b0;->i:Li/q;

    .line 7
    iget-object v0, p1, Li/b0$a;->f:Li/r$a;

    invoke-virtual {v0}, Li/r$a;->a()Li/r;

    move-result-object v0

    iput-object v0, p0, Li/b0;->j:Li/r;

    .line 8
    iget-object v0, p1, Li/b0$a;->g:Li/c0;

    iput-object v0, p0, Li/b0;->k:Li/c0;

    .line 9
    iget-object v0, p1, Li/b0$a;->h:Li/b0;

    iput-object v0, p0, Li/b0;->l:Li/b0;

    .line 10
    iget-object v0, p1, Li/b0$a;->i:Li/b0;

    iput-object v0, p0, Li/b0;->m:Li/b0;

    .line 11
    iget-object v0, p1, Li/b0$a;->j:Li/b0;

    iput-object v0, p0, Li/b0;->n:Li/b0;

    .line 12
    iget-wide v0, p1, Li/b0$a;->k:J

    iput-wide v0, p0, Li/b0;->o:J

    .line 13
    iget-wide v0, p1, Li/b0$a;->l:J

    iput-wide v0, p0, Li/b0;->p:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/b0;->j:Li/r;

    invoke-virtual {v0, p1}, Li/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/b0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/b0;->k:Li/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c0;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Li/c0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/b0;->k:Li/c0;

    return-object v0
.end method

.method public j()Li/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0;->q:Li/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Li/b0;->j:Li/r;

    invoke-static {v0}, Li/d;->a(Li/r;)Li/d;

    move-result-object v0

    iput-object v0, p0, Li/b0;->q:Li/d;

    :goto_0
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Li/b0;->g:I

    return v0
.end method

.method public l()Li/q;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/b0;->i:Li/q;

    return-object v0
.end method

.method public m()Li/r;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0;->j:Li/r;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget v0, p0, Li/b0;->g:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public q()Li/b0$a;
    .locals 1

    .line 1
    new-instance v0, Li/b0$a;

    invoke-direct {v0, p0}, Li/b0$a;-><init>(Li/b0;)V

    return-object v0
.end method

.method public r()Li/b0;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/b0;->n:Li/b0;

    return-object v0
.end method

.method public s()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/b0;->p:J

    return-wide v0
.end method

.method public t()Li/z;
    .locals 1

    .line 1
    iget-object v0, p0, Li/b0;->e:Li/z;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/b0;->f:Li/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Li/b0;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/b0;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/b0;->e:Li/z;

    .line 2
    invoke-virtual {v1}, Li/z;->g()Li/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/b0;->o:J

    return-wide v0
.end method
