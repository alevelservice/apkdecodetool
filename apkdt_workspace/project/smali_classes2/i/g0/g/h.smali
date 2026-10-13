.class public final Li/g0/g/h;
.super Li/c0;
.source "RealResponseBody.java"


# instance fields
.field private final e:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:J

.field private final g:Lj/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLj/e;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Li/c0;-><init>()V

    .line 2
    iput-object p1, p0, Li/g0/g/h;->e:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Li/g0/g/h;->f:J

    .line 4
    iput-object p4, p0, Li/g0/g/h;->g:Lj/e;

    return-void
.end method


# virtual methods
.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/g0/g/h;->f:J

    return-wide v0
.end method

.method public k()Li/u;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0/g/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Li/u;->b(Ljava/lang/String;)Li/u;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public l()Lj/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/g0/g/h;->g:Lj/e;

    return-object v0
.end method
