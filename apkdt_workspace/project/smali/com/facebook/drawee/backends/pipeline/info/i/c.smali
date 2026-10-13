.class public Lcom/facebook/drawee/backends/pipeline/info/i/c;
.super Le/f/i/h/a;
.source "ImagePerfRequestListener.java"


# instance fields
.field private final a:Lcom/facebook/common/time/b;

.field private final b:Lcom/facebook/drawee/backends/pipeline/info/h;


# direct methods
.method public constructor <init>(Lcom/facebook/common/time/b;Lcom/facebook/drawee/backends/pipeline/info/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/i/h/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->a:Lcom/facebook/common/time/b;

    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    return-void
.end method


# virtual methods
.method public a(Le/f/i/i/b;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->a:Lcom/facebook/common/time/b;

    invoke-interface {v1}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/h;->g(J)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Le/f/i/i/b;)V

    .line 3
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p4}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Z)V

    return-void
.end method

.method public a(Le/f/i/i/b;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 2

    .line 10
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->a:Lcom/facebook/common/time/b;

    invoke-interface {v0}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/h;->f(J)V

    .line 11
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p3, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Le/f/i/i/b;)V

    .line 12
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p4}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Z)V

    return-void
.end method

.method public a(Le/f/i/i/b;Ljava/lang/String;Z)V
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->a:Lcom/facebook/common/time/b;

    invoke-interface {v1}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/h;->f(J)V

    .line 7
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Le/f/i/i/b;)V

    .line 8
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {p1, p3}, Lcom/facebook/drawee/backends/pipeline/info/h;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->a:Lcom/facebook/common/time/b;

    invoke-interface {v1}, Lcom/facebook/common/time/b;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/drawee/backends/pipeline/info/h;->f(J)V

    .line 2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/i/c;->b:Lcom/facebook/drawee/backends/pipeline/info/h;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/info/h;->b(Ljava/lang/String;)V

    return-void
.end method
