.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getPeerSettings"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17584
    const v0, 0x3672e09c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17583
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "constructor"    # I
    .param p3, "exception"    # Z

    .prologue
    .line 17589
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_peerSettings;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_peerSettings;

    move-result-object v0

    return-object v0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 17593
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 17594
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getPeerSettings;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 17595
    return-void
.end method
