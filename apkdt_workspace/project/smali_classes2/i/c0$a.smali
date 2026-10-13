.class Li/c0$a;
.super Li/c0;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/c0;->a(Li/u;JLj/e;)Li/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Li/u;

.field final synthetic f:J

.field final synthetic g:Lj/e;


# direct methods
.method constructor <init>(Li/u;JLj/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c0$a;->e:Li/u;

    iput-wide p2, p0, Li/c0$a;->f:J

    iput-object p4, p0, Li/c0$a;->g:Lj/e;

    invoke-direct {p0}, Li/c0;-><init>()V

    return-void
.end method


# virtual methods
.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/c0$a;->f:J

    return-wide v0
.end method

.method public k()Li/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Li/c0$a;->e:Li/u;

    return-object v0
.end method

.method public l()Lj/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/c0$a;->g:Lj/e;

    return-object v0
.end method
