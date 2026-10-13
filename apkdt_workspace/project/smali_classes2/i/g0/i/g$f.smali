.class Li/g0/i/g$f;
.super Li/g0/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/g0/i/g;->a(ILi/g0/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Li/g0/i/b;

.field final synthetic h:Li/g0/i/g;


# direct methods
.method varargs constructor <init>(Li/g0/i/g;Ljava/lang/String;[Ljava/lang/Object;ILi/g0/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/g0/i/g$f;->h:Li/g0/i/g;

    iput p4, p0, Li/g0/i/g$f;->f:I

    iput-object p5, p0, Li/g0/i/g$f;->g:Li/g0/i/b;

    invoke-direct {p0, p2, p3}, Li/g0/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/g0/i/g$f;->h:Li/g0/i/g;

    iget-object v0, v0, Li/g0/i/g;->n:Li/g0/i/l;

    iget v1, p0, Li/g0/i/g$f;->f:I

    iget-object v2, p0, Li/g0/i/g$f;->g:Li/g0/i/b;

    invoke-interface {v0, v1, v2}, Li/g0/i/l;->a(ILi/g0/i/b;)V

    .line 2
    iget-object v0, p0, Li/g0/i/g$f;->h:Li/g0/i/g;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Li/g0/i/g$f;->h:Li/g0/i/g;

    iget-object v1, v1, Li/g0/i/g;->x:Ljava/util/Set;

    iget v2, p0, Li/g0/i/g$f;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
