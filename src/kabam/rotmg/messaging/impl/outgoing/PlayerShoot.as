﻿package kabam.rotmg.messaging.impl.outgoing {
import flash.utils.IDataOutput;

import kabam.rotmg.messaging.impl.data.WorldPosData;

public class PlayerShoot extends OutgoingMessage {

    public var bulletId_:uint;
    public var containerType_:int;
    public var startingPos_:WorldPosData;
    public var angle_:Number;
    public var attackPeriod_:Number;
    public var attackAmount_:int;

    public function PlayerShoot(_arg1:uint, _arg2:Function) {
        this.startingPos_ = new WorldPosData();
        super(_arg1, _arg2);
    }

    override public function writeToOutput(_arg1:IDataOutput):void {
        _arg1.writeByte(this.bulletId_);
        _arg1.writeShort(this.containerType_);
        this.startingPos_.writeToOutput(_arg1);
        _arg1.writeFloat(this.angle_);
        _arg1.writeFloat(this.attackPeriod_);
        _arg1.writeInt(this.attackAmount_);
    }

    override public function toString():String {
        return (formatToString("PLAYERSHOOT", "bulletId_", "containerType_", "startingPos_", "angle_", "attackPeriod_", "attackAmount_"));
    }


}
}
