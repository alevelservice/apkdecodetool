.class Le/a/a/a/i/a$a;
.super Ljava/lang/Object;
.source "AnnotationLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/reflect/Method;

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;IILjava/lang/reflect/Method;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;II",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/a/i/a$a;->g:Ljava/lang/Class;

    .line 3
    iput p2, p0, Le/a/a/a/i/a$a;->b:I

    .line 4
    iput p3, p0, Le/a/a/a/i/a$a;->c:I

    .line 5
    iput-object p4, p0, Le/a/a/a/i/a$a;->a:Ljava/lang/reflect/Method;

    .line 6
    iput-object p5, p0, Le/a/a/a/i/a$a;->d:Ljava/lang/String;

    .line 7
    iput p6, p0, Le/a/a/a/i/a$a;->e:I

    .line 8
    iput-object p7, p0, Le/a/a/a/i/a$a;->f:Ljava/lang/String;

    return-void
.end method
